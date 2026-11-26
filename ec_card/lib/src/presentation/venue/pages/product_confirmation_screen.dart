import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../localization/app_localizations.dart';
import '../../../domain/scanner/scanner_api_service.dart';
import '../../../domain/venue/venue_api_service.dart';
import '../../../injection.dart';
import '../../core/widgets/appbar.dart';
import '../../core/app.dart';
import 'order_placed_screen.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class ConfirmDeliveryScreen extends StatefulWidget {
  final String productName;
  final String productImage;
  final String productDescription;
  final String productId;
  final String venueName;
  final String street;
  final String address;
  final String city;

  const ConfirmDeliveryScreen({
    Key? key,
    required this.productName,
    required this.productImage,
    required this.productDescription,
    required this.productId,
    required this.venueName,
    required this.street,
    required this.address,
    required this.city,
  }) : super(key: key);

  @override
  State<ConfirmDeliveryScreen> createState() => _ConfirmDeliveryScreenState();
}

class _ConfirmDeliveryScreenState extends State<ConfirmDeliveryScreen> {
  bool isSubmitting = false;

  Future<void> _submitOrder() async {
    setState(() => isSubmitting = true);

    try {
      final scannerAPI = getIt<ScannerAPIService>();
      final eligibilityResponse = await scannerAPI.userEligibleTransactionAPI();

      final data = eligibilityResponse.data['data'];

      final bool isEligible = data['isEligible'] == true;
      final localizations = AppLocalizations.of(context)!;
      final String message =
          data['message'] ?? localizations.notEligibleToOrderNow;

      if (!isEligible) {
        Navigator.pop(context);
        ScaffoldMessenger.of(MyApp.navigatorKey.currentContext!).showSnackBar(
          SnackBar(content: Text(message), backgroundColor: Colors.orange),
        );
        return;
      }

      final venueAPIService = getIt<VenueAPIService>();
      final response = await venueAPIService.orderProductsAPI(
        widget.street,
        widget.address,
        widget.city,
        widget.productId,
      );

      if (response.statusCode == 200 && response.data['message'] != null) {
        // Placing an order can change eligibility (e.g. order limits), so
        // drop the cached check instead of letting a stale "eligible"
        // result linger for the rest of the TTL window.
        scannerAPI.invalidateEligibilityCache();
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(content: Text(response.data['message']), backgroundColor: Colors.green),
        // );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => OrderPlacedScreen(
              productName: widget.productName,
              venueName: widget.venueName,
              orderTime: DateTime.now(),
            ),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(localizations.failedToPlaceOrder),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      appLog("Order error: $e");
      final localizations = AppLocalizations.of(context)!;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(localizations.unexpectedErrorOccurred),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      setState(() => isSubmitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: localizations.confirmDeliveryInfo,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r)),
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.w),
                      child: Text(
                        widget.productName,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Divider(height: 2),
                    Padding(
                      padding: EdgeInsets.all(16.w),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image.network(
                          widget.productImage,
                          height: 240.h,
                          width: double.infinity,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.w),
                      child: Text(
                        localizations.productDescriptionLabel,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.only(
                            left: 16.w, right: 16.w, bottom: 16.h),
                        child: Text(
                          widget.productDescription,
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20.w, 6.h, 20.w, 18.h),
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r)),
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Text(
                localizations.orderBlockWarning,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                      foregroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(localizations.back),
                  ),
                ),
                SizedBox(width: 20.w),
                Expanded(
                  child: ElevatedButton(
                    onPressed: isSubmitting ? null : _submitOrder,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: isSubmitting
                        ? const SizedBox(
                            width: 22,
                            height: 22,
                            child: CircularProgressIndicator(
                                strokeWidth: 2, color: Colors.white),
                          )
                        : Text(localizations.confirm),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
