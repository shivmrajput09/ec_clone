import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
    required this.onChanged,
    required this.onClearPressed,
    required this.controller,
    required this.query,
  }) : super(key: const Key("home-screen-search-bar"));

  final TextEditingController controller;
  final Function(String) onChanged;
  final Function onClearPressed;
  final String query;

  @override
  Widget build(BuildContext context) {
    final BorderRadius radius = BorderRadius.circular(30.r);

    return Padding(
      padding:
          EdgeInsets.only(top: 14.h, bottom: 10.h, left: 16.h, right: 16.h),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: radius),
        elevation: 2,
        child: TextField(
          controller: controller,
          key: const Key("search-bar-textfeld"),
          onChanged: (val) => onChanged(val),
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context)!.search,
            hintStyle: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 16, color: Colors.grey),
            prefixIcon: const Icon(
              Icons.search,
              size: 18,
              color: Colors.grey,
            ),
            suffixIcon: Visibility(
              visible: query.isNotEmpty,
              // visible: true,
              child: IconButton(
                icon: const Icon(Icons.clear, size: 20, color: Colors.grey),
                onPressed: () {
                  onClearPressed();
                },
              ),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(2.sp),
            border: OutlineInputBorder(
              borderRadius: radius,
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
