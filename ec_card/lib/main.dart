
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'src/data/core/services/firebase_messaging_service.dart';
import 'src/domain/local_storage/secure_storage_manager.dart';
import 'src/injection.dart';
import 'src/presentation/core/res/app_theme.dart';
import 'src/presentation/loading_status/loading_status_page.dart';
import 'src/presentation/login/login_screen.dart';

// Background notification handler
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(
  RemoteMessage message,
) async {
  await Firebase.initializeApp();

  debugPrint(
    '[Background Message Received] ID: ${message.messageId}',
  );
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 1. Initialize Firebase
  await Firebase.initializeApp();

  // 2. Register background notification handler
  FirebaseMessaging.onBackgroundMessage(
    firebaseMessagingBackgroundHandler,
  );

  // 3. Initialize Dependency Injection
  configureInjection();

  // 4. Check login session from Secure Storage
  final storage = getIt<SecureStorgeManager>();
  final token = await storage.getAccessToken();

  final isLoggedIn = token != null && token.isNotEmpty;

  // 5. Initialize foreground notification service
  FirebaseMessagingService.initialize();

  // 6. Run application
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
