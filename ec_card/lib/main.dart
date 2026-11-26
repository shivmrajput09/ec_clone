import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:ec_card_app/src/domain/local_storage/secure_storage_manager.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/data/core/services/firebase_messaging_service.dart';
import 'package:ec_card_app/src/presentation/settings/settings_controller.dart';
import 'package:ec_card_app/src/data/core/services/settings_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

import 'src/presentation/core/app.dart';
import 'src/presentation/core/locale_provider.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

const FirebaseOptions _iosFirebaseOptions = FirebaseOptions(
  apiKey: 'AIzaSyA7cwT2gqaRMIbiS_mLxTlBB7UVAfxqdEo',
  appId: '1:585835365280:ios:ae2b8b97052450317ddac5',
  messagingSenderId: '585835365280',
  projectId: 'ec-card-firebase',
  iosBundleId: 'uk.b60.provide.ec-card.stage',
  storageBucket: 'ec-card-firebase.firebasestorage.app',
);

Future<void> _initializeFirebase() async {
  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.iOS) {
    await Firebase.initializeApp(options: _iosFirebaseOptions);
    return;
  }

  await Firebase.initializeApp();
}

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await _initializeFirebase();
  appLog(
    '[Background message] id=${message.messageId} data=${message.data}',
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // package:intl's DateFormat only gets its date-symbol data loaded as a
  // side effect of GlobalMaterialLocalizations.delegate.load() running for
  // the active locale. For locales that delegate doesn't support (e.g.
  // Gaelic "gd"), this app's own fallback delegate (app.dart) takes over
  // instead and never triggers that load, leaving intl's date data
  // uninitialized for the whole session - so even DateFormat.localeExists()
  // throws instead of returning false. Initializing it explicitly here
  // guarantees it's always ready, regardless of which locale is active.
  await initializeDateFormatting();
  await _initializeFirebase();
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  unawaited(FirebaseMessagingService.initialize());

  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  // Load saved locale so the app starts in the user's preferred language.
  final localeProvider = LocaleProvider();
  await localeProvider.loadSavedLocale();
  configureInjection(env: Environment.dev);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top],
  );
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor:
        Colors.black, // navigation bar color//Navigation bar divider color
    systemNavigationBarIconBrightness: Brightness.dark, //navigation bar icon
  ));

  // Awaited before runApp. iOS Keychain entries survive a reinstall; run in
  // the background, the splash screen could read stale tokens before the
  // wipe, or the wipe could delete tokens from a quick first sign-in.
  await clearSecureStorageOnReinstall();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(
    ChangeNotifierProvider.value(
      value: localeProvider,
      child: MyAppView(
        settingsController: settingsController,
        localeProvider: localeProvider,
      ),
    ),
  );
}

Future<void> clearSecureStorageOnReinstall() async {
  String key = 'hasRunBefore';
  SharedPreferences prefs = await SharedPreferences.getInstance();

  final launchStatus = prefs.getBool(key) ?? false;

  if (!launchStatus) {
    final _secureStorage = getIt<SecureStorgeManager>();

    await _secureStorage.clearSecureStorage();
  }

  await prefs.setBool(key, true);
}
