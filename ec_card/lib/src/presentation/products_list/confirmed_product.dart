import 'dart:convert';

import 'package:ec_card_app/src/application/scanner/scanner_cubit.dart';
import 'package:ec_card_app/src/data/scanner/model/product_model.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/appbar.dart';
import 'package:ec_card_app/src/presentation/home/scanner/widgets/scan_error.dart';
import 'package:ec_card_app/src/presentation/home/scanner/widgets/scan_success.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmedProductPage extends StatelessWidget {
  const ConfirmedProductPage({
    Key? key,
    required this.selectedProduct,
    required this.qrCode,
  }) : super(key: key);

  final ProductModel selectedProduct;
  final String qrCode;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScannerCubit, ScannerState>(
      listener: (context, state) {
        state.productTransactionClaimFailureOrSuccess.map((a) => a.fold((l) {
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
      },
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(appBar: AppBar(), title: AppLocalizations.of(context)!.confirmSelection),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        side: const BorderSide(color: Colors.white, width: 0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Radio button at the top
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 16.h, horizontal: 16.w),
                          child: Text(selectedProduct.name,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                              )),
                        ),
                        Divider(
                          height: 1,
                          color: Colors.grey.shade500,
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.sp),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.r),
                            child: Image.network(
                              selectedProduct.image,
                              fit: BoxFit.fitHeight,
                              width: double.infinity,
                              // height: 250.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Text(
                            AppLocalizations.of(context)!.productDescriptionLabel,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Text(
                            selectedProduct.description,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 16.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            width: double.infinity,
            height: 80.h,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                ),
              ],
            ),
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              buttonHeight: 60.h,
              mainAxisSize: MainAxisSize.max,
              children: [
                //close button
                ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                          const EdgeInsets.symmetric(horizontal: 40)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder?>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(width: 1, color: Colors.amber[900]!),
                      )),
                      backgroundColor:
                          MaterialStateProperty.all<Color?>(Colors.amber[900])),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    AppLocalizations.of(context)!.back,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),

                //submit button
                state.isConfirmProductLoading
                    ? const CircularProgressIndicator(
                        color: primaryCyan,
                      )
                    : ElevatedButton(
                        onPressed: () {
                          context
                              .read<ScannerCubit>()
                              .onProductConfimed(selectedProduct);
                        },
                        child: Text(
                          AppLocalizations.of(context)!.confirm,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 18, color: Colors.white),
                        ),
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry?>(
                                  const EdgeInsets.symmetric(horizontal: 40)),
                          backgroundColor:
                              MaterialStateProperty.all<Color?>(primaryCyan),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder?>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.r))),
                        ),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
