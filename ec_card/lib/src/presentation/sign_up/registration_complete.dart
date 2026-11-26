import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/button.dart';
import 'package:ec_card_app/src/presentation/loading_status/loading_status_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:html/parser.dart' as html_parser;

import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class RegistrationCompleteScreen extends StatelessWidget {
  const RegistrationCompleteScreen({
    Key? key,
    required this.message,
  }) : super(key: key);

  static const routeName = '/registration-complete';
  final String message;

  String _plainMessage() {
    final parsed = (html_parser.parseFragment(message).text ?? '').trim();
    return parsed.isEmpty ? message : parsed;
  }

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
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 80.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 100.h,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: 60.h),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 24.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 25.0.h),
                            child: Image.asset('assets/images/happy.png',
                                fit: BoxFit.contain, height: 60),
                          ),
                          Text(
                            AppLocalizations.of(context)!.well_done,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontSize: 18, color: primaryCyanText),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 30.h),
                            child: Text(
                              _plainMessage(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: ButtonWidget(
                                title: AppLocalizations.of(context)!
                                    .continue_button,
                                onPressed: () {
                                  appLog(
                                      "------REGISTARTION COMPLETE SCREEN:  Continue Pressed");
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) =>
                                              const LoadingStatusPage()),
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
