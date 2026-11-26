import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: () => onPressed(),
        // Name the button explicitly rather than letting the accessible name
        // be inferred from the FittedBox-wrapped Text, which surfaces as a
        // node of its own and leaves the button itself announced without a
        // name ahead of its "double-tap to activate" hint.
        child: Semantics(
          label: title,
          excludeSemantics: true,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              maxLines: 1,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
              const EdgeInsets.symmetric(horizontal: 40)),
          backgroundColor: MaterialStateProperty.all<Color?>(primaryCyan),
          shape: MaterialStateProperty.all<RoundedRectangleBorder?>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r))),
        ),
      ),
    );
  }
}
