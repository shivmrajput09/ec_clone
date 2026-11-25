import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'src/data/core/services/firebase_messaging_service.dart';
import 'src/domain/local_storage/secure_storage_manager.dart';
import 'src/injection.dart';
import 'src/presentation/core/res/app_theme.dart';
import 'src/presentation/loading_status/loading_status_page.dart';
import 'src/presentation/login/login_screen.dart';

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

// Background notification handler
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(
  RemoteMessage message,
) async {
  await _initializeFirebase();

  debugPrint(
    '[Background Message Received] ID: ${message.messageId}',
  );
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 1. Firebase initialization with try-catch
  try {
    await _initializeFirebase();

    FirebaseMessaging.onBackgroundMessage(
      firebaseMessagingBackgroundHandler,
    );

    // 2. Initialize foreground notification service
    await FirebaseMessagingService.initialize();
  } catch (e) {
    debugPrint("Firebase init note: $e");
  }

  // 3. Initialize Dependency Injection
  configureInjection();

  // 4. Check login session from Secure Storage
  bool isLoggedIn = false;

  try {
    final storage = getIt<SecureStorgeManager>();
    final token = await storage.getAccessToken();

    isLoggedIn = token != null && token.isNotEmpty;
  } catch (e) {
    debugPrint("Secure Storage note: $e");
  }

  // 5. Run application
  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  const MyApp({
    super.key,
    required this.isLoggedIn,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EC Card',
      theme: appLightTheme,
      darkTheme: appDarkTheme,
      home: isLoggedIn
          ? const LoadingStatusPage()
          : const LoginScreen(),
    );
  }
}