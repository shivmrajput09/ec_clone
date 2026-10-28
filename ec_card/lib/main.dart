import 'package:flutter/material.dart';
import 'src/injection.dart';
import 'src/presentation/login/login_screen.dart'; // Naya import

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Dependency Injection start karna zaroori hai
  configureInjection(); 
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EC Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Tum chaho toh apna AppTheme yahan laga sakte ho
      ),
      // App khulte hi Login Screen dikhegi
      home: const LoginScreen(), 
    );
  }
}