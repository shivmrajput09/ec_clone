// lib/main.dart

import 'package:flutter/material.dart';

import 'src/domain/local_storage/secure_storage_manager.dart';
import 'src/injection.dart';
import 'src/presentation/core/res/app_theme.dart';
import 'src/presentation/loading_status/loading_status_page.dart';
import 'src/presentation/login/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Clean Architecture Dependency Injection
  configureInjection();

  // Check if session token exists for auto-login
  final storage = getIt<SecureStorgeManager>();
  final token = await storage.getAccessToken();
  final isLoggedIn = token != null && token.isNotEmpty;

  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

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
