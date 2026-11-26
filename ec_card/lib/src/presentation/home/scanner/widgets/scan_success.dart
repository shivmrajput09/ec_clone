import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/appbar.dart';
import 'package:ec_card_app/src/presentation/core/widgets/button.dart';
import 'package:ec_card_app/src/presentation/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';

class ScanSuccessfulPage extends StatelessWidget {
  const ScanSuccessfulPage({Key? key, required this.transactionDetails})
      : super(key: key);

  final Map<String, dynamic> transactionDetails;

  @override
  Widget build(BuildContext context) {
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
        appBar: CustomAppBar(appBar: AppBar(), title: AppLocalizations.of(context)!.orderCompleted),
        // Scrollable so longer translations / long detail lists can never
        // overflow the bottom.
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: Column(
                      children: [
                        Icon(
                          Icons.thumb_up,
                          size: 40.sp,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "${AppLocalizations.of(context)!.congratulations}!",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    fontSize: 20,
                                    color: primaryColorLight,
                                    fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          transactionDetails['message'],
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  transactionDetails['notes'],
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                ),
              ),
              if (transactionDetails['show'] == true)
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
              Padding(
                padding: EdgeInsets.only(left: 60.w, right: 60.w, top: 50),
                child: ButtonWidget(
                    title: AppLocalizations.of(context)!.close,
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                          (route) => false);
                    }),
              ),
            ],
          ),
        ),
        // body: Stack(
        //   children: [
        //     Container(
        //       width: MediaQuery.of(context).size.width,
        //       height: MediaQuery.of(context).size.height,
        //       decoration: BoxDecoration(
        //         color: primaryBackgroundColor,
        //         image: const DecorationImage(
        //             image: AssetImage('assets/images/backgroundSuccess.png'),
        //             fit: BoxFit.fill),
        //       ),
        //       child: Padding(
        //         padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 80.h),
        //         child: Column(
        //           mainAxisSize: MainAxisSize.max,
        //           children: [
        //             Card(
        //               elevation: 10,
        //               shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(10.r)),
        //               color: white,
        //               child: Container(
        //                 decoration: const BoxDecoration(
        //                   image: DecorationImage(
        //                       image: AssetImage(
        //                           'assets/images/backgroundSuccess.png'),
        //                       fit: BoxFit.cover),
        //                 ),
        //                 padding: EdgeInsets.symmetric(
        //                     horizontal: 16.w, vertical: 30.h),
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.center,
        //                   children: [
        //                     Padding(
        //                       padding: EdgeInsets.only(bottom: 30.0.h),
        //                       child: Image.asset('assets/images/success.png',
        //                           fit: BoxFit.contain, height: 60),
        //                     ),
        // Text(
        //   AppLocalizations.of(context)!.congratulations,
        //   style: Theme.of(context)
        //       .textTheme
        //       .headline6
        //       ?.copyWith(fontSize: 18, color: primaryCyan),
        // ),
        //                     Padding(
        //                       padding: EdgeInsets.symmetric(vertical: 30.h),
        //                       child: Text(
        //                         message,
        //                         textAlign: TextAlign.center,
        //                         style: Theme.of(context)
        //                             .textTheme
        //                             .headline5
        //                             ?.copyWith(
        //                               fontWeight: FontWeight.bold,
        //                             ),
        //                         // textAlign: TextAlign.center,
        //                       ),
        //                     ),
        //                     SizedBox(
        //                       height: MediaQuery.of(context).size.height / 2 -
        //                           100.h,
        //                       child: Image.asset(
        //                         'assets/images/logo.png',
        //                         fit: BoxFit.cover,
        //                       ),
        //                     ),
        // Padding(
        //   padding: const EdgeInsets.only(
        //       left: 30, right: 30, top: 40),
        //   child: ButtonWidget(
        //       title: AppLocalizations.of(context)!
        //           .continue_button,
        //       onPressed: () {
        //         Navigator.pushAndRemoveUntil(
        //             context,
        //             CupertinoPageRoute(
        //               builder: (context) =>
        //                   const HomePage(),
        //             ),
        //             (route) => false);
        //       }),
        // ),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
