import 'package:flutter/foundation.dart';

/// Keys whose values must never be written to the log.
///
/// Matched loosely, so `ecauthtoken`, `refreshToken` and `token` are all
/// caught by `token`. The cost of over-redacting is a less useful debug line;
/// the cost of under-redacting is a credential in a device log.
const _sensitiveKeys = <String>[
  'token',
  'otp',
  'mobile',
  'phone',
  'email',
  'dob',
  'dateofbirth',
  'postalcode',
  'postcode',
  'gender',
  'accesscode',
  'deviceauthcode',
  'password',
  'authorization',
  'cookie',
];

bool _isSensitive(Object? key) {
  final name = key.toString().toLowerCase().replaceAll(RegExp(r'[_\-\s]'), '');
  return _sensitiveKeys.any(name.contains);
}

/// [value] with anything sensitive replaced.
///
/// Redaction happens in every build, not only release. A developer watching a
/// debug session has no more business seeing a live access token than a device
/// log does, and keeping one code path means the release behaviour is the one
/// that gets exercised daily.
Object? redacted(Object? value) {
  if (value is Map) {
    return {
      for (final entry in value.entries)
        entry.key: _isSensitive(entry.key) ? '***' : redacted(entry.value),
    };
  }

  if (value is Iterable) return value.map(redacted).toList();

  return value;
}

/// Diagnostic logging, compiled out of release builds.
///
/// The app used to write request headers, request and response bodies, OTP
/// entries and FCM tokens straight to the device log — in signed release
/// builds, where anything holding READ_LOGS could read them. Routing every
/// diagnostic line through here means a release build emits none of it.
///
/// Pass sensitive structures through [redacted] at the call site; this cannot
/// redact a string that has already been interpolated.
void appLog(Object? message) {
  if (kReleaseMode) return;

  debugPrint(message?.toString());
}
