import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageSelectorWidget extends StatefulWidget {
  final List<Map<String, String>> languages;
  final String initialValue;
  final ValueChanged<String>? onChanged;
  final Color? textColor;
  final Color? borderColor;

  const LanguageSelectorWidget({
    Key? key,
    required this.languages,
    this.initialValue = 'en',
    this.onChanged,
    this.textColor,
    this.borderColor,
  }) : super(key: key);

  @override
  State<LanguageSelectorWidget> createState() => _LanguageSelectorWidgetState();
}

class _LanguageSelectorWidgetState extends State<LanguageSelectorWidget> {
  late String _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.initialValue;
  }

  @override
  void didUpdateWidget(LanguageSelectorWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      setState(() {
        _selected = widget.initialValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final textColor = widget.textColor ?? primaryBackgroundColor;
    final borderColor = widget.borderColor ?? primaryCyan;

    return DropdownButtonFormField<String>(
      value: _selected,
      isExpanded: true,
      icon: Icon(Icons.language, color: textColor),
      dropdownColor: Colors.white,
      style: TextStyle(color: textColor, fontSize: 16.sp),
      selectedItemBuilder: (BuildContext context) {
        return widget.languages.map<Widget>((lang) {
          return Text(
            lang['name'] ?? lang['code'] ?? '',
            style: TextStyle(color: textColor, fontSize: 16.sp),
          );
        }).toList();
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
        labelText: AppLocalizations.of(context)!.language,
        labelStyle: TextStyle(color: textColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: borderColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: borderColor, width: 1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: borderColor, width: 1),
        ),
      ),
      items: widget.languages.map((lang) {
        return DropdownMenuItem<String>(
          value: lang['code'],
          child: Text(
            lang['name'] ?? lang['code'] ?? '',
            style: const TextStyle(color: Colors.black),
          ),
        );
      }).toList(),
      onChanged: (value) {
        if (value != null) {
          setState(() => _selected = value);
          widget.onChanged?.call(value);
        }
      },
    );
  }
}
