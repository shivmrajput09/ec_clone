// ignore_for_file: constant_identifier_names

import 'dart:async';
import 'dart:io' show Platform;

import 'package:dio/dio.dart';
import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/data/core/app_update/app_update_controller.dart';
import 'package:ec_card_app/src/domain/local_storage/secure_storage_manager.dart';
import 'package:ec_card_app/src/domain/scanner/scanner_api_service.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/presentation/core/app.dart';
import 'package:ec_card_app/src/presentation/login/login.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';
import 'package:ec_card_app/src/data/core/api/auth_response_tokens.dart';

/// The single Dio interceptor for every authenticated API call.
///
/// It is attached once to the app's shared [Dio] client (see
/// `api_service.dart`), so it is the one place that:
///  * attaches auth + context headers on the way out ([onRequest]),
///  * captures rotated tokens on the way back in ([onResponse]), and
///  * recovers or ends a session on a 401 ([onError]).
///
/// ## Auth transport (A06-2)
/// The short-lived access token is sent as the `ecauthtoken` header on every
/// request. The long-lived refresh token is deliberately NOT — it is sent only
/// to the refresh endpoint by [_performRefresh], so it never travels with
/// ordinary traffic.
///
/// ## Silent refresh (A06-2)
/// When a request returns 401 because the access token has expired, [onError]
/// calls `POST /auth/refresh` once — coalesced across a burst of concurrent
/// 401s by [_refreshInFlight] — to mint a fresh access token, then replays the
/// original request. Only if the refresh itself fails does the session end and
/// the user return to login. Pre-auth endpoints ([APIEndpoints.preAuthPaths])
/// are skipped, because a 401 there is a genuine credential failure rather than
/// an expired session.
class AppInterceptors extends Interceptor {
  final SecureStorgeManager secureStorage = getIt<SecureStorgeManager>();

  /// The client this interceptor is attached to, used to replay a request after
  /// a successful token refresh (A06-2).
  final Dio _dio;

  /// A bare client (no interceptors) for the refresh call itself, so refreshing
  /// can never recurse back into this interceptor.
  final Dio _refreshDio = Dio(BaseOptions(baseUrl: APIEndpoints.BASE_URL));

  AppInterceptors(this._dio);

  static const String ACCESS_TOKEN = 'ecauthtoken';
  static const String REFRESH_TOKEN = 'ecsecuretoken';
  static const String CONTENT_TYPE = "Content-Type";
  static const String CHARSET = "charset";
  static const String APP_VERSION = 'x-app-version';
  static const String APP_BUILD = 'x-app-build';
  static const String APP_PLATFORM = 'x-app-platform';

  static Future<Map<String, String>>? _appVersionHeadersFuture;

  /// Lets the gateway record which release each user is on. Read once, since
  /// the installed version can't change while the app is running. A failure
  /// sends no version rather than failing the request.
  static Future<Map<String, String>> _appVersionHeaders() =>
      _appVersionHeadersFuture ??= PackageInfo.fromPlatform()
          .then((info) => {
                APP_VERSION: info.version,
                APP_BUILD: info.buildNumber,
                APP_PLATFORM: Platform.isIOS ? 'ios' : 'android',
              })
          .catchError((Object e) {
        appLog('AppInterceptors: could not read the app version -> $e');
        return <String, String>{};
      });

  /// Attaches the access token plus language and app-version headers to every
  /// outgoing request.
  @override
  FutureOr<dynamic> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    appLog("------- API Request [${options.method}] ${options.baseUrl}${options.path} --------");
    final accessToken = await secureStorage.getAccessToken();

    final headers = Map<String, String>.from(options.headers);
    options.headers
        .addAll({CONTENT_TYPE: 'application/json', CHARSET: 'UTF-8'});

    // A06-2: ordinary requests carry only the short-lived access token. The
    // long-lived refresh token is sent solely to the refresh endpoint (see
    // _performRefresh), so it is no longer exposed on every call.
    if (accessToken != null) {
      headers[ACCESS_TOKEN] = accessToken;
    }

    final prefs = await SharedPreferences.getInstance();
    final savedLang = prefs.getString('userLanguage');
    final activeLang = MyApp.localeProviderInstance.locale.languageCode;
    final lang = activeLang.isNotEmpty ? activeLang : (savedLang ?? 'en');
    headers['Accept-Language'] = lang;
    headers.addAll(await _appVersionHeaders());

    final RequestOptions newRequest = options.copyWith(headers: headers);
    appLog("Request Headers: ${redacted(newRequest.headers)}");
    appLog("Resolved Language: $lang");

    if (newRequest.data != null) {
      appLog("Request Data: ${redacted(newRequest.data)}");
    }
    if (newRequest.queryParameters.isNotEmpty) {
      appLog("Query Parameters: ${redacted(newRequest.queryParameters)}");
    }

    return handler.next(newRequest);
  }

  /// Captures any rotated token(s) the gateway returned — header or
  /// `Set-Cookie` — and persists them, so the sliding access token stays fresh.
  @override
  FutureOr<dynamic> onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    appLog("------- API Response [${response.statusCode}] ${response.requestOptions.path} --------");
    appLog("Response Data: ${redacted(response.data)}");

    // Stored independently. The gateway rotates the short-lived access token
    // on ordinary authenticated requests, and those responses carry no refresh
    // token at all — so requiring both meant every rotation was discarded.
    // Header or Set-Cookie, whichever the gateway used; see
    // auth_response_tokens.dart.
    final tokens = authResponseTokens(response.headers);
    if (tokens.accessToken != null) {
      await secureStorage.setAccessToken(accessToken: tokens.accessToken!);
    }
    if (tokens.refreshToken != null) {
      await secureStorage.setRefreshToken(refreshToken: tokens.refreshToken!);
    }

    return handler.next(response);
  }

  /// True while the session is being torn down.
  ///
  /// Several requests are in flight at once on most screens, so an expired
  /// session produces a burst of 401s. Without this each one would clear
  /// storage again and push the login route again, stacking duplicate screens.
  static bool _endingSession = false;

  /// A06-2: a single in-flight refresh shared across a burst of concurrent 401s.
  ///
  /// Most screens have several requests running at once, so an expired access
  /// token produces many 401s together. Without this each one would fire its own
  /// `/auth/refresh`; instead they all await the same call.
  static Future<bool>? _refreshInFlight;

  /// Refreshes the access token, minting a fresh pair from the refresh token.
  /// Returns true when a new access token was stored. Coalesces concurrent
  /// callers onto one network call.
  Future<bool> _refreshTokens() =>
      _refreshInFlight ??= _performRefresh().whenComplete(() {
        _refreshInFlight = null;
      });

  /// Calls `/auth/refresh` with the stored token pair (sent as headers, so no
  /// CSRF token is required) and persists whatever new token(s) come back. Runs
  /// on the bare [_refreshDio] so it never re-enters this interceptor. Returns
  /// true when a new access token was stored, and false (never throws) on any
  /// failure so callers can simply branch on the result.
  Future<bool> _performRefresh() async {
    try {
      final accessToken = await secureStorage.getAccessToken();
      final refreshToken = await secureStorage.getRefreshToken();
      if (accessToken == null || refreshToken == null) return false;

      // Tokens go as headers (the app's usual auth transport), so the refresh
      // call needs no CSRF token. The bare client skips this interceptor.
      final response = await _refreshDio.post(
        APIEndpoints.REFRESH_URL,
        options: Options(
          headers: {
            ACCESS_TOKEN: accessToken,
            REFRESH_TOKEN: refreshToken,
            CONTENT_TYPE: 'application/json',
          },
        ),
      );

      // The gateway returns the new token(s) as headers or Set-Cookie; a refresh
      // response carries the access token alone.
      final tokens = authResponseTokens(response.headers);
      if (tokens.accessToken != null) {
        await secureStorage.setAccessToken(accessToken: tokens.accessToken!);
      }
      if (tokens.refreshToken != null) {
        await secureStorage.setRefreshToken(refreshToken: tokens.refreshToken!);
      }
      return tokens.accessToken != null;
    } catch (e) {
      appLog('AppInterceptors: token refresh failed -> $e');
      return false;
    }
  }

  /// Discards the credentials and any state belonging to the old user, then
  /// returns to the login screen.
  Future<void> _endSession() async {
    if (_endingSession) return;
    _endingSession = true;

    try {
      await secureStorage.clearSecureStorage();

      // Cached on a singleton, so it would otherwise survive into the next
      // session and be shown to whoever signs in next.
      getIt<ScannerAPIService>().invalidateEligibilityCache();

      // Requests made at launch (the push-notification token, for one) can be
      // refused while start-up is still held on the splash screen by the
      // update prompt. Start-up finds the cleared session and opens login
      // itself once it continues, so the prompt stays on the splash.
      if (!AppUpdateController.instance.isStartUpAllowed) return;

      MyApp.navigatorKey.currentState
          ?.pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
    } finally {
      _endingSession = false;
    }
  }

  /// On a 401, attempts a single silent refresh-and-retry (A06-2) before
  /// tearing the session down; all other errors propagate unchanged.
  @override
  FutureOr<dynamic> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    appLog("------- API Error [${err.response?.statusCode}] ${err.requestOptions.path} --------");
    appLog("Error Message: ${err.message}");
    if (err.response?.data != null) {
      appLog("Error Data: ${redacted(err.response?.data)}");
    }

    // Any rejected session ends the session, not only one on the dashboard.
    // The old check named a single path, so a 401 anywhere else left the app
    // holding credentials the gateway had already stopped honouring: every
    // later call failed and the user was shown errors rather than the login
    // screen.
    //
    // Signing out is the exception. That request is expected to be refused
    // once the gateway has dropped the session, and the application layer is
    // already returning to the login screen itself — stepping in here as well
    // sent the user to it twice.
    final isSignOut = err.requestOptions.path == APIEndpoints.LOGOUT_URL;

    if (err.response?.statusCode == 401 && !isSignOut) {
      final isPreAuth =
          APIEndpoints.preAuthPaths.contains(err.requestOptions.path);
      final alreadyRetried = err.requestOptions.extra['retried'] == true;

      // A06-2: a 401 on an authenticated request usually means the short-lived
      // access token expired. Refresh once and replay the request before
      // tearing the session down. Pre-auth failures and already-retried
      // requests are genuine and fall straight through to ending the session.
      if (!isPreAuth && !alreadyRetried && await _refreshTokens()) {
        err.requestOptions.extra['retried'] = true;
        final replay = err.requestOptions;

        // A FormData body is a one-shot stream: it was finalized when the
        // request was first sent, and sending the same instance again throws.
        // The support form is the app's only multipart call, so without this
        // an attached ticket is the one thing a refresh cannot rescue —
        // clone() exists for exactly this.
        final body = replay.data;
        if (body is FormData) {
          replay.data = body.clone();
        }

        try {
          final response = await _dio.fetch(replay);
          return handler.resolve(response);
        } on DioException catch (retryErr) {
          // The replay failed. If it was another 401 the session is genuinely
          // gone and the retried request's own error pass has already ended it;
          // for any other failure (5xx, network) propagate it as-is rather than
          // logging the user out.
          return handler.next(retryErr);
        } catch (retryErr, stack) {
          // Nothing else the replay can throw should escape onError unhandled
          // and surface as an unrecognised error to the caller.
          return handler.next(DioException(
            requestOptions: replay,
            error: retryErr,
            stackTrace: stack,
          ));
        }
      }

      await _endSession();
    }

    return handler.next(err); // Changed to handler.next(err) to properly propagate error
  }
}
