import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryBackgroundColor,
          image: const DecorationImage(
            image: AssetImage('assets/images/backgroundSuccess.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: const Center(
          child: CircularProgressIndicator(
            color: primaryCyan,
          ),
        ),
      ),
    );
  }
}
