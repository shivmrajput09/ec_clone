import 'dart:convert';

import 'package:ec_card_app/src/application/scanner/scanner_cubit.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/back_icon.dart';
import 'package:ec_card_app/src/presentation/core/widgets/button.dart';
import 'package:ec_card_app/src/presentation/home/home_page.dart';
import 'package:ec_card_app/src/presentation/home/scanner/scanner.dart';
import 'package:ec_card_app/src/presentation/home/scanner/widgets/not_eligible.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class EligibilityCheckerScreen extends StatefulWidget {
  const EligibilityCheckerScreen({Key? key}) : super(key: key);

  @override
  State<EligibilityCheckerScreen> createState() =>
      _EligibilityCheckerScreenState();
}

class _EligibilityCheckerScreenState extends State<EligibilityCheckerScreen> {
  @override
  void initState() {
    BlocProvider.of<ScannerCubit>(context).updateNetworkStatus();

    Future.delayed(const Duration(milliseconds: 500), () {
      context.read<ScannerCubit>().checkEligibility();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    appLog("ELIGIBILITY CHECKER");
    return BlocListener<ScannerCubit, ScannerState>(
      listener: (context, state) {
        state.eligibleFailureOrSuccess.map((a) => a.fold((l) {
              Navigator.pop(context);
            }, (r) {
              appLog("----- SCANNER: IS ELIGIBLE-----> $r");
              final Map<String, dynamic> eligibleData = jsonDecode(r);

              if (eligibleData['isEligible'] == false) {
                if (eligibleData['pendingScreen'] == true) {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 150),
                      reverseTransitionDuration:
                          const Duration(milliseconds: 10),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return ScaleTransition(
                          scale: animation,
                          child: child,
                        );
                      },
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return PendingTransactionScreen(
                          message: eligibleData['message'] ??
                              'Your last claim request is still in pending state.',
                          pendingDetails: Map<String, dynamic>.from(
                            eligibleData['pendingDetails'] ?? {},
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 150),
                      reverseTransitionDuration:
                          const Duration(milliseconds: 10),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return ScaleTransition(
                          scale: animation,
                          child: child,
                        );
                      },
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return NotEligibleScreen(
                          prevClaimDate: eligibleData['prevClaimDate'],
                          nextClaimDate: eligibleData['nextClaimDate'],
                          transactionDetails:
                              eligibleData['transactionDetails'],
                        );
                      },
                    ),
                  );
                }
              } else if (eligibleData['isEligible'] == true) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ScannerPage())
                    // PageRouteBuilder(
                    //   transitionDuration: const Duration(milliseconds: 150),
                    //   reverseTransitionDuration: const Duration(milliseconds: 10),
                    //   transitionsBuilder:
                    //       (context, animation, secondaryAnimation, child) {
                    //     return ScaleTransition(
                    //       scale: animation,
                    //       child: child,
                    //     );
                    //   },
                    //   pageBuilder: (context, animation, secondaryAnimation) {
                    //     return const ScannerPage();
                    //   },
                    // ),
                    );
              }
            }));
      },
      child: Scaffold(
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
          )),
        ),
      ),
    );
  }
}

class PendingTransactionScreen extends StatelessWidget {
  const PendingTransactionScreen({
    Key? key,
    required this.message,
    required this.pendingDetails,
  }) : super(key: key);

  final String message;
  final Map<String, dynamic> pendingDetails;

  void _goHome(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      CupertinoPageRoute(
        builder: (context) => const HomePage(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final details = _buildDetails();

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          _goHome(context);
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 32.h),
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: IconButton(
                    icon: const BackIcon(variant: BackIconVariant.iosNew),
                    onPressed: () => _goHome(context),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      SizedBox(height: 32.h),
                      Icon(
                        Icons.pending_actions,
                        color: primaryCyan,
                        size: 56.sp,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        localizations.not_eligible_for_transaction,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        message,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.grey[700],
                              fontSize: 16.sp,
                            ),
                      ),
                      if (details.isNotEmpty) ...[
                        SizedBox(height: 28.h),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  localizations.transactionDetails,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                SizedBox(height: 14.h),
                                for (final detail in details)
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10.h),
                                    child: RichText(
                                      text: TextSpan(
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(fontSize: 13.sp),
                                        children: [
                                          TextSpan(
                                            text: '${detail.key}: ',
                                            style: TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text: detail.value,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            ),
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
                    ],
                  ),
                ),
                ButtonWidget(
                  title: localizations.close,
                  onPressed: () => _goHome(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<MapEntry<String, String>> _buildDetails() {
    final details = <MapEntry<String, String>>[];
    final transactionTime = pendingDetails['transactionTime']?.toString();
    final isOnlineOrder = pendingDetails['isOnlineStoreTransaction'];
    final address = pendingDetails['onlineStoreAddress'];

    if (transactionTime != null && transactionTime.trim().isNotEmpty) {
      details.add(MapEntry('Transaction Time', transactionTime));
    }
    if (isOnlineOrder != null) {
      details
          .add(MapEntry('Online Order', isOnlineOrder == true ? 'Yes' : 'No'));
    }
    if (address is Map) {
      final parts = [
        address['street'],
        address['address'],
        address['city'],
        address['postalCode'],
      ]
          .where((part) => part != null && part.toString().trim().isNotEmpty)
          .map((part) => part.toString().trim())
          .toList();
      if (parts.isNotEmpty) {
        details.add(MapEntry('Order Address', parts.join(', ')));
      }
      final phone = address['phone']?.toString();
      if (phone != null && phone.trim().isNotEmpty) {
        details.add(MapEntry('Phone', phone));
      }
    }

    return details;
  }
}
