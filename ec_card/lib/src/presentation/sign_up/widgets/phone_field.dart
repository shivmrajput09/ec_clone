import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FixedPhoneFieldWidget extends StatelessWidget {
  const FixedPhoneFieldWidget({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: false,
      enableSuggestions: false,
      textInputAction: TextInputAction.done,
      maxLength: 10,
      cursorColor: primaryBackgroundColor,
      style: TextStyle(color: primaryBackgroundColor),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
        labelStyle: TextStyle(color: primaryBackgroundColor),
        hintText: phoneNumber,
        fillColor: primaryCyan,
        hintStyle: TextStyle(color: Colors.grey[400]),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.cyan, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: primaryCyan, width: 1),
        ),
        counterText: "",
        enabled: false,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: primaryCyan, width: 1),
        ),
      ),
      // onChanged: (val) => onChanged(val),
    );
  }
}
