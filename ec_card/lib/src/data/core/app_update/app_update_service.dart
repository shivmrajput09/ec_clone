import 'dart:io' show Platform;
import 'dart:math' show max;

import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/data/core/api/api_service.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// A newer release of the app that the user should move to.
class AppUpdate {
  const AppUpdate({
    required this.latestVersion,
    required this.isRequired,
    required this.storeUrl,
  });

  final String latestVersion;

  /// True when the installed version may no longer be used.
  final bool isRequired;

  final Uri storeUrl;
}

/// Asks the gateway whether a newer release of this app is in the store.
class AppUpdateService {
  /// The update to offer, or null when the installed app is current.
  ///
  /// Any failure — no network, an unexpected reply — also yields null. Being
  /// unable to check is no reason to stop someone using the app.
  Future<AppUpdate?> check() async {
    if (!Platform.isAndroid && !Platform.isIOS) return null;

    try {
      final response =
          await getIt<ApiService>().dio.get(APIEndpoints.APP_VERSION_URL);
      final packageInfo = await PackageInfo.fromPlatform();

      return appUpdateFrom(
        response.data,
        platform: Platform.isIOS ? 'ios' : 'android',
        // Read from the platform, not kDisplayAppVersion: the gateway lists
        // each store's own version number, and Android and iOS differ.
        installedVersion: packageInfo.version,
        packageName: packageInfo.packageName,
      );
    } catch (e) {
      appLog('AppUpdateService: version check failed -> $e');
      return null;
    }
  }
}

/// The update described by the gateway's app-version [body] for [platform],
/// or null when [installedVersion] is already current.
///
/// The body is `{status, data: {android: {...}, ios: {...}}, message}`, each
/// platform carrying `version`, `forceUpdate` and `storeUrl`.
AppUpdate? appUpdateFrom(
  Object? body, {
  required String platform,
  required String installedVersion,
  required String packageName,
}) {
  if (body is! Map || body['status'] != 200) return null;

  final data = body['data'];
  if (data is! Map) return null;

  final entry = data[platform];
  if (entry is! Map) return null;

  final latestVersion = entry['version'];
  if (latestVersion is! String ||
      !isOlderVersion(installedVersion, latestVersion)) {
    return null;
  }

  final storeUrl = _storeUrlFor(
    entry['storeUrl'],
    platform: platform,
    packageName: packageName,
  );
  // Prompting without a way to act on it would only get in the way.
  if (storeUrl == null) return null;

  return AppUpdate(
    latestVersion: latestVersion,
    isRequired: entry['forceUpdate'] == true,
    storeUrl: storeUrl,
  );
}

/// Whether [installed] is an earlier release than [latest].
///
/// Compared numerically part by part, so 4.0.3 is earlier than 4.0.22, and a
/// missing part counts as zero. Build numbers and pre-release suffixes
/// ("4.0.22+93") are ignored. Anything unreadable counts as not older: a typo
/// in the gateway's config must not lock users out.
bool isOlderVersion(String installed, String latest) {
  final installedParts = _versionParts(installed);
  final latestParts = _versionParts(latest);
  if (installedParts == null || latestParts == null) return false;

  for (var i = 0; i < max(installedParts.length, latestParts.length); i++) {
    final a = i < installedParts.length ? installedParts[i] : 0;
    final b = i < latestParts.length ? latestParts[i] : 0;
    if (a != b) return a < b;
  }
  return false;
}

List<int>? _versionParts(String version) {
  final core = version.trim().split(RegExp(r'[+\-\s]')).first;
  if (core.isEmpty) return null;

  final parts = <int>[];
  for (final part in core.split('.')) {
    final number = int.tryParse(part);
    if (number == null) return null;
    parts.add(number);
  }
  return parts;
}

Uri? _storeUrlFor(
  Object? configured, {
  required String platform,
  required String packageName,
}) {
  if (configured is String) {
    final uri = Uri.tryParse(configured.trim());
    // Only a secure link is handed to the OS, whatever the gateway sends.
    if (uri != null && uri.scheme == 'https' && uri.host.isNotEmpty) {
      return uri;
    }
  }

  if (platform == 'android' && packageName.isNotEmpty) {
    return Uri.https(
        'play.google.com', '/store/apps/details', {'id': packageName});
  }

  // An App Store link needs the numeric app id, which only the gateway's
  // config can supply.
  return null;
}
