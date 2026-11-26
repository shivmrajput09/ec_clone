/// The user-facing app version shown on the Account screen.
///
/// This is deliberately NOT read from [PackageInfo]: the two platforms carry
/// different store versions (Android tracks its own versionName, while iOS
/// must stay above the version already approved on the App Store), and the
/// product wants a single shared number displayed to users.
///
/// Keep this in step with `version:` in pubspec.yaml when releasing.
const String kDisplayAppVersion = '4.0.22';
