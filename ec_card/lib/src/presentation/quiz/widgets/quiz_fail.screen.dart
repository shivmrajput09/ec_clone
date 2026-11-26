import 'package:animations/animations.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/button.dart';
import 'package:ec_card_app/src/presentation/home/home_page.dart';
import 'package:ec_card_app/src/presentation/loading_status/loading_status_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ec_card_app/src/localization/app_localizations.dart';

class QuizFailScreen extends StatelessWidget {
  const QuizFailScreen({
    Key? key,
    required this.message,
  }) : super(key: key);

  static const routeName = '/quiz-fail';

  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: primaryBackgroundColor,
              image: const DecorationImage(
                  image: AssetImage('assets/images/backgroundSuccess.png'),
                  fit: BoxFit.fill),
            ),
            // Scrollable so longer translations can never overflow the bottom.
            child: SingleChildScrollView(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 80.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 30.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 30.0.h),
                            child: Image.asset('assets/images/fail.png',
                                fit: BoxFit.contain, height: 60),
                          ),
                          Text(
                            AppLocalizations.of(context)!.oops,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontSize: 18, color: primaryCyan),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 30.h),
                            child: Text(
                              message,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(fontSize: 16),
                              // textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 20),
                            child: ButtonWidget(
                                title: AppLocalizations.of(context)!
                                    .continue_button,
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      PageRouteBuilder(
                                        transitionDuration:
                                            const Duration(milliseconds: 500),
                                        reverseTransitionDuration:
                                            const Duration(milliseconds: 500),
                                        transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) {
                                          return SharedAxisTransition(
                                            transitionType:
                                                SharedAxisTransitionType
                                                    .horizontal,
                                            secondaryAnimation:
                                                secondaryAnimation,
                                            animation: animation,
                                            child: child,
                                          );
                                        },
                                        pageBuilder: (context, animation,
                                            secondaryAnimation) {
                                          return const LoadingStatusPage();
                                        },
                                      ),
                                      (route) => false);
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
