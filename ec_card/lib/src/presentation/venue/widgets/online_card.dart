import 'package:ec_card_app/src/data/venue/model/entity/venue_products_entity.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/venue/pages/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/venue/venue_cubit.dart';
import '../../../domain/scanner/scanner_api_service.dart';
import '../../core/app.dart';
import '../../home/scanner/widgets/not_eligible.dart';

class OnlineCard extends StatelessWidget {
  final ProductEntity product;

  const OnlineCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.network(
                  product.image,
                  width: 60.w,
                  height: 60.w,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      _ProductImageFallback(size: 60.w),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return _ProductImageFallback(
                      size: 60.w,
                      showProgress: true,
                    );
                  },
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      product.description.length > 60
                          ? '${product.description.substring(0, 60)}...'
                          : product.description,
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.grey[700],
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 6.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetailsScreen(product: product),
                              ),
                            );
                          },
                          child: Text(
                            localizations.readMore,
                            // One per product card: the product's own name is
                            // what tells them apart.
                            semanticsLabel:
                                '${localizations.readMore}, ${product.name}',
                            style: TextStyle(
                              color: primaryColorLight,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.shopping_cart_outlined,
                              color: Colors.grey[700],
                              semanticLabel:
                                  '${localizations.orderNow}, ${product.name}'),
                          onPressed: () async {
                            final scannerAPI = getIt<ScannerAPIService>();
                            final eligibilityResponse =
                                await scannerAPI.userEligibleTransactionAPI();
                            final data = eligibilityResponse.data['data'];

                            final bool isEligible = data['isEligible'] == true;
                            final bool isPending =
                                data['pendingScreen'] == true;
                            final String message = data['message'] ??
                                localizations.notEligibleToOrderNow;
                            final nextClaimDate = data['nextClaimDate'] ?? '';
                            final prevClaimDate = data['prevClaimDate'] ?? '';
                            final transactionDetails =
                                data['transactionDetails'] ?? {};

                            if (!isEligible) {
                              //Navigator.pop(context);
                              // ScaffoldMessenger.of(MyApp.navigatorKey.currentContext!).showSnackBar(
                              //   SnackBar(content: Text(message), backgroundColor: Colors.orange),
                              // );
                              // return;

                              if (isPending == true) {
                                ScaffoldMessenger.of(
                                        MyApp.navigatorKey.currentContext!)
                                    .showSnackBar(
                                  SnackBar(
                                      content: Text(message),
                                      backgroundColor: Colors.orange),
                                );
                                return;
                              } else {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    transitionDuration:
                                        const Duration(milliseconds: 150),
                                    reverseTransitionDuration:
                                        const Duration(milliseconds: 10),
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      return ScaleTransition(
                                        scale: animation,
                                        child: child,
                                      );
                                    },
                                    pageBuilder: (context, animation,
                                        secondaryAnimation) {
                                      return NotEligibleScreen(
                                        prevClaimDate: prevClaimDate,
                                        nextClaimDate: nextClaimDate,
                                        transactionDetails: transactionDetails,
                                      );
                                    },
                                  ),
                                );
                                return;
                              }
                            }
                            final state = context.read<VenueCubit>().state;
                            showOrderFormBottomSheet(
                              context,
                              phone: state.phoneNumber,
                              postalCode: state.postalCode,
                              product: product,
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductImageFallback extends StatelessWidget {
  const _ProductImageFallback({
    required this.size,
    this.showProgress = false,
  });

  final double size;
  final bool showProgress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      color: Colors.grey.shade100,
      child: showProgress
          ? SizedBox(
              width: 18.w,
              height: 18.w,
              child: const CircularProgressIndicator(strokeWidth: 2),
            )
          : Icon(
              Icons.image_not_supported_outlined,
              size: 24.w,
              color: Colors.grey.shade500,
            ),
    );
  }
}
