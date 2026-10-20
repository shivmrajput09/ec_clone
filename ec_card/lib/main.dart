import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// Apni screens import karo yahan
// import 'package:ec_card_app/src/presentation/login/login.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp ko ScreenUtilInit se wrap karna hai
    return ScreenUtilInit(
      // designSize: Tumhare Figma ya UI design ka base size (width, height). 
      // EC Card ke design ke hisaab se isko set kar lena (usually 360, 690 ya 375, 812 hota hai)
      designSize: const Size(375, 812), 
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'EC Card Clone',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            // yahan tumhara appLightTheme aayega jo tum app_theme.dart mein banaoge
          ),
          // home: const LoginPage(), // Yahan apni initial screen daal do
          home: child, 
        );
      },
      child: const Scaffold(
        body: Center(child: Text('ScreenUtil is working!')), // Temporary screen testing ke liye
      ),
    );
  }
}