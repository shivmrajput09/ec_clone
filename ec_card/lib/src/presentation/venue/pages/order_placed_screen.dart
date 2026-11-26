import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../localization/app_localizations.dart';
import '../../core/a11y/semantic_labels.dart';
import '../../core/res/app_colors.dart';
import '../../utils/extension.dart';

class OrderPlacedScreen extends StatelessWidget {
  final String productName;
  final String venueName;
  final DateTime orderTime;

  const OrderPlacedScreen({
    Key? key,
    required this.productName,
    required this.venueName,
    required this.orderTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String formattedDate = DateFormat('dd-MM-yyyy').format(orderTime);
    // DateFormat.jm resolves to each locale's own time convention (12-hour
    // with AM/PM for English, 24-hour for most others) instead of forcing
    // the English 12-hour "hh:mm a" pattern on every language.
    final String formattedTime = DateFormat.jm(
            safeDateFormatLocale(Localizations.localeOf(context).languageCode))
        .format(orderTime);
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.orderPlaced),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            // Congratulation Box
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.0.h),
                    child: Image.asset('assets/images/happy.png',
                        // Decorative: the text beside it says the same.
                        excludeFromSemantics: true,
                        fit: BoxFit.contain, height: 60),
                  ),
                  Text(
                    localizations.congratulations,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 18, color: primaryCyanText),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    localizations.orderConfirmed,
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),

            // Order Details
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    localizations.orderDetails,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Divider(height: 24.h),
                  _buildDetailRow(localizations.productNameLabel, productName),
                  _buildDetailRow(localizations.venueNameLabel, venueName),
                  _buildDetailRow(localizations.orderDateLabel, formattedDate),
                  _buildDetailRow(localizations.orderTimeLabel, formattedTime),
                ],
              ),
            ),
            SizedBox(height: 20.h),

            // Blocking Message
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Text(
                localizations.orderBlockedSevenDays,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30.h),

            // Close Button
            Align(
              alignment: Alignment.center,
              child: IntrinsicWidth(
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    padding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 64.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  child: Text(localizations.close),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFF8F9FA),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    // Announce the pair as one node ("Product name, Mask") instead of letting
    // the label and value surface as separate elements — the trailing colon
    // on the label otherwise reaches a screen reader as its own item and is
    // read out as "colon".
    return Semantics(
      container: true,
      excludeSemantics: true,
      label: semanticLabelFor(label, value),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 6.h),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14.sp,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
