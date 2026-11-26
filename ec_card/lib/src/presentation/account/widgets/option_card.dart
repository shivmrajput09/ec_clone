import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OptionCardWidget extends StatelessWidget {
  const OptionCardWidget({
    Key? key,
    required this.imagePath,
    required this.onPress,
    required this.title,
    this.icon,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final Function onPress;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: SizedBox(
        height: 75.h,
        width: double.infinity,
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: InkWell(
            onTap: () => onPress(),
            child: ListTile(
              contentPadding: const EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 10,
                top: 5,
              ),
              leading: Container(
                height: 50.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: icon != null
                    ? Icon(
                        icon,
                        color: primaryCyan,
                        size: 30,
                      )
                    : imagePath.isEmpty
                        ? const Icon(
                            Icons.support_agent,
                            color: primaryCyan,
                            size: 30,
                          )
                        : Image.asset(
                            imagePath,
                            height: 40,
                          ),
              ),
              title: Text(title),
            ),
          ),
        ),
      ),
    );
  }
}
