import 'dart:convert';

import 'package:ec_card_app/src/application/scanner/scanner_cubit.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/home/scanner/widgets/scan_error.dart';
import 'package:ec_card_app/src/presentation/home/scanner/widgets/scan_success.dart';
import 'package:ec_card_app/src/presentation/products_list/products_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({Key? key}) : super(key: key);

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  int qrDetected = 0;

  // Held in state rather than built inline so the camera is not torn down and
  // recreated on every rebuild. noDuplicates replaces the old
  // `allowDuplicates: false` flag.
  final MobileScannerController _scannerController = MobileScannerController(
    detectionSpeed: DetectionSpeed.noDuplicates,
  );

  @override
  void initState() {
    // BlocProvider.of<ScannerCubit>(context).updateNetworkStatus();
    super.initState();
  }

  @override
  void dispose() {
    _scannerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScannerCubit, ScannerState>(
      listener: (context, state) {
        state.claimTransactionFailureOrSuccess.map((a) => a.fold((l) {
              Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 150),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return ScaleTransition(
                      scale: animation,
                      child: child,
                    );
                  },
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return ScanErrorPage(
                      message: l,
                    );
                  },
                ),
              );
            }, (r) {
              Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 150),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return ScaleTransition(
                      scale: animation,
                      child: child,
                    );
                  },
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return ScanSuccessfulPage(
                      transactionDetails: Map<String, dynamic>.from(
                          jsonDecode(r))['transactionDetails'],
                    );
                  },
                ),
              );
            }));

        state.productListFailureOrSuccess.map((a) => a.fold((l) {
              // Error in fetching productsList. Pop back past the eligibility
              // checker as well: it is a spinner-only screen that pushed the
              // scanner, so popping onto it leaves the user watching a
              // progress indicator that never resolves.
              Navigator.popUntil(context, (route) => route.isFirst);
              Fluttertoast.showToast(msg: l);
            }, (r) {
              //Navigate to the next page
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ProductsListPage(
                    products: state.productsList,
                    venueDetails: state.venueDetails,
                    qrCode: state.qrCode,
                  );
                },
              ));
            }));
      },
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            Navigator.popUntil(context, (route) => route.isFirst);

            return true;
          },
          child: Scaffold(
            body: Stack(
              children: [
                MobileScanner(
                  controller: _scannerController,
                  onDetect: (capture) {
                    final String? code = capture.barcodes.isEmpty
                        ? null
                        : capture.barcodes.first.rawValue;
                    if (code == null) return;
                    appLog('Barcode found! $code');

                    if (code.startsWith("eccard___")) {
                      qrDetected += 1;

                      if (qrDetected == 1) {
                        context.read<ScannerCubit>().claimTransaction(code);
                      }
                    }

                    appLog("QR DETCTED COUNT: $qrDetected");
                  },
                ),
                Positioned(
                  left: 40,
                  right: 40,
                  bottom: 80,
                  child: SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamedAndRemoveUntil(
                        //     context, HomePage.routeName, (route) => false);
                        Navigator.popUntil(context, (route) => route.isFirst);
                      },
                      child: state.isClaimTransactionLoading
                          ? const CircularProgressIndicator(color: white)
                          : Text(
                              AppLocalizations.of(context)!.cancel,
                            ),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                            const EdgeInsets.symmetric(horizontal: 40)),
                        backgroundColor: MaterialStateProperty.all<Color?>(
                            Colors.amber[900]),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder?>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.r))),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
