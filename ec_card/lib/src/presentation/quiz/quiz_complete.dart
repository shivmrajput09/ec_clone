import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/button.dart';
import 'package:ec_card_app/src/presentation/loading_status/loading_status_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:html/parser.dart' as html_parser;

import 'package:ec_card_app/src/localization/app_localizations.dart';

class QuizCompleteScreen extends StatelessWidget {
  const QuizCompleteScreen({Key? key, required this.message}) : super(key: key);

  static const routeName = '/quiz-complete';

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
            // Scrollable so longer translations can never overflow the bottom;
            // the card sizes to its content and the viewport scrolls if needed.
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                  left: 20.w, right: 20.w, top: 80.h, bottom: 20.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
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
                            child: Image.asset('assets/images/success.png',
                                fit: BoxFit.contain, height: 60),
                          ),
                          Text(
                            AppLocalizations.of(context)!.congratulations,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontSize: 18, color: primaryCyan),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 30.h),
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                maxHeight: MediaQuery.of(context).size.height /
                                    3, // Set the maximum height
                              ),
                                child: Scrollbar(
                                thumbVisibility: true,
                                child: SingleChildScrollView(
                                  child: Text(
                                    _plainMessage(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.h),
                            child: Text(
                              AppLocalizations.of(context)!
                                  .quiz_completion_text_four,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      fontSize: 16,
                                      color: primaryBackgroundColor),
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
                                  // Route back through LoadingStatusPage
                                  // instead of straight to the dashboard, so
                                  // additional registration questions (which
                                  // now come after the quiz) get shown if
                                  // still pending.
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
