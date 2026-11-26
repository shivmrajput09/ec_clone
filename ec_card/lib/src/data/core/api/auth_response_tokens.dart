import 'package:dio/dio.dart';

/// Authentication tokens the gateway returns after a successful sign-in,
/// registration OTP check, self-registration or silent access-token refresh.
///
/// Older gateway releases returned both tokens as `ecauthtoken` /
/// `ecsecuretoken` response headers. The hardened gateway sends them only as
/// HttpOnly `Set-Cookie` headers. HttpOnly hides a cookie from browser
/// JavaScript; a native app can still read the raw header, so the values are
/// read from it, kept in secure storage, and sent back as request headers
/// (see `AppInterceptors.onRequest`). Staging accepts tokens sent that way
/// without a CSRF token.
class AuthResponseTokens {
  const AuthResponseTokens({this.accessToken, this.refreshToken});

  /// Short-lived JWT sent as the `ecauthtoken` request header.
  final String? accessToken;

  /// Long-lived JWT sent as the `ecsecuretoken` request header. The gateway
  /// uses it to re-mint an expired access token.
  final String? refreshToken;

  /// True only when both tokens are present. Sign-in and the registration OTP
  /// check must return a full pair; a refresh response carries the access
  /// token alone.
  bool get isComplete => accessToken != null && refreshToken != null;
}

/// Reads the auth tokens from a gateway response.
///
/// A dedicated response header is preferred, so the app keeps working against
/// gateway releases that still send one. Otherwise the value comes from
/// `Set-Cookie`. A token found in neither place is `null`; callers decide
/// whether a partial result is acceptable.
AuthResponseTokens authResponseTokens(Headers headers) {
  return AuthResponseTokens(
    accessToken:
        _headerValue(headers, 'ecauthtoken') ?? _cookieValue(headers, 'ecauthtoken'),
    refreshToken: _headerValue(headers, 'ecsecuretoken') ??
        _cookieValue(headers, 'ecsecuretoken'),
  );
}

String? _headerValue(Headers headers, String name) {
  final value = headers[name];
  if (value == null || value.isEmpty) return null;
  final last = value.last.trim();
  return last.isEmpty ? null : last;
}

/// The value of [cookieName] from the response's `Set-Cookie` headers, or
/// `null` when it is absent or cleared.
///
/// Each `Set-Cookie` line is its own list entry on native platforms, so the
/// list is read directly; `headers.value()` throws when a header has more than
/// one value, and the gateway always sets several cookies.
///
/// When the same cookie is set more than once, the last one wins, as in a
/// browser. Self-registration shows why this matters: the auth middleware
/// first sets a rotated copy of the temporary registration token, then the
/// controller sets the new user's tokens on the same response. Keeping the
/// first signed the user out straight after a successful registration.
String? _cookieValue(Headers headers, String cookieName) {
  final expectedName = cookieName.toLowerCase();
  String? latest;

  for (final setCookie in headers['set-cookie'] ?? const <String>[]) {
    // Only the leading `name=value` pair matters; attributes such as `Path`,
    // `HttpOnly`, `Secure` and `Expires` follow the first `;`.
    final pair = setCookie.split(';').first.trim();
    final separator = pair.indexOf('=');
    if (separator <= 0) continue;

    // Names are matched case-insensitively. The gateway lower-cases them
    // today, but nothing guarantees it.
    if (pair.substring(0, separator).trim().toLowerCase() != expectedName) {
      continue;
    }

    // An empty value is how a cookie is cleared (`ecauthtoken=; Expires=…`).
    // Treat it as no token, so a clearing response never saves an empty
    // string over a valid token.
    final value = pair.substring(separator + 1).trim();
    if (value.isEmpty) {
      latest = null;
      continue;
    }

    // Cookie values may be percent-encoded. JWTs are URL-safe, so decoding is
    // normally a no-op; keep the raw value if the encoding is malformed.
    try {
      latest = Uri.decodeComponent(value);
    } on FormatException {
      latest = value;
    }
  }

  return latest;
}
