import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';

class SignUpFieldWidget extends StatelessWidget {
  const SignUpFieldWidget(
      {Key? key,
      required this.label,
      required this.placeholder,
      required this.onChanged,
      this.suffixIcon,
      this.inputType,
      this.enabled,
      this.maxLength})
      : super(key: key);

  final String label;
  final String placeholder;
  final Function(String) onChanged;
  final Widget? suffixIcon;
  final TextInputType? inputType;
  final int? maxLength;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enabled ?? true,
      autocorrect: false,
      enableSuggestions: false,
      textInputAction: TextInputAction.done,
      maxLength: maxLength ?? 11,
      keyboardType: inputType,
      cursorColor: primaryBackgroundColor,
      style: TextStyle(color: primaryBackgroundColor),
      inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r'\s'))],
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
        label: Text(label),
        labelStyle: TextStyle(
            color: enabled ?? true ? primaryBackgroundColor : Colors.grey[400]),
        hintText: placeholder,
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
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: primaryCyan, width: 1),
        ),
      ),
      onChanged: (val) => onChanged(val),
    );
  }
}
