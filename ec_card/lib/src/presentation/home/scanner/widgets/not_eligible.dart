import 'package:ec_card_app/src/presentation/core/widgets/button.dart';
import 'package:ec_card_app/src/presentation/home/home_page.dart';
import 'package:ec_card_app/src/presentation/home/scanner/widgets/countdown_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/utils/extension.dart';
import 'package:intl/intl.dart';

class NotEligibleScreen extends StatelessWidget {
  const NotEligibleScreen(
      {Key? key,
      required this.prevClaimDate,
      required this.nextClaimDate,
      required this.transactionDetails})
      : super(key: key);

  final String prevClaimDate;
  final String nextClaimDate;
  final Map<String, dynamic> transactionDetails;

  @override
  Widget build(BuildContext context) {
    final String prevDate = DateFormat(
            DateFormat.YEAR_ABBR_MONTH_DAY,
            safeDateFormatLocale(Localizations.localeOf(context).languageCode))
        .format(DateTime.parse(prevClaimDate));
    final String prevTime =
        "${DateTime.parse(prevClaimDate).hour}:${DateTime.parse(prevClaimDate).minute}:${DateTime.parse(prevClaimDate).second}";

    return WillPopScope(
      onWillPop: () async {
        Navigator.pushAndRemoveUntil(
            context,
            CupertinoPageRoute(
              builder: (context) => const HomePage(),
            ),
            (route) => false);

        return true;
      },
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 60.h),
          child: Column(
            children: [
              //   Padding(
              //     padding: EdgeInsets.only(bottom: 30.0.h),
              //     child: Image.asset('assets/images/fail.png',
              //         fit: BoxFit.contain, height: 60),
              //   ),
              //   Text(
              //     AppLocalizations.of(context)!.oh_no,
              //     style: Theme.of(context)
              //         .textTheme
              //         .headline6
              //         ?.copyWith(color: primaryCyan),
              //   ),
              SizedBox(height: 60.h),
              Text(
                AppLocalizations.of(context)!.thankYouRecentTransaction(prevDate, prevTime),
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 16),
              ),
              SizedBox(height: 24.h),
              Center(
                child: TimerCountdown(
                  format: CountDownTimerFormat.daysHoursMinutesSeconds,
                  endTime: DateTime.parse(nextClaimDate),
                ),
              ),

              const Spacer(),

              if (transactionDetails['show'] == true)
                // Container(
                //   child: Padding(
                //     padding:
                //         EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                //     child: Column(
                //       children: [
                //         Text("Transaction Details"),
                //       ],
                //     ),
                //   ),
                // ),
                Card(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 12.h),
                          child: Text(
                            AppLocalizations.of(context)!.transactionDetails,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Divider(height: 1, thickness: 1),
                        SizedBox(height: 16.h),
                        ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: transactionDetails['details'].length,
                          itemBuilder: (context, index) {
                            final item = Map<String, dynamic>.from(
                                transactionDetails['details'][index]);
                            return Padding(
                              padding: EdgeInsets.only(
                                  bottom: 12.h, right: 16.w, left: 16.w),
                              child: RichText(
                                  text: TextSpan(
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600),
                                children: [
                                  TextSpan(
                                    text: "${item['key']}: ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey),
                                  ),
                                  TextSpan(
                                    text: "${item['value']}",
                                  ),
                                ],
                              )),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              const Spacer(),
              ButtonWidget(
                title: AppLocalizations.of(context)!.continue_button,
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                      (route) => false);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
