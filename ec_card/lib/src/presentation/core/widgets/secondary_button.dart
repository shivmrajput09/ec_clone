import 'package:flutter/material.dart';

/// The grey/outlined secondary-action button (Cancel, Close, etc.), shared
/// so every screen that needs a dismiss/secondary action looks identical.
class SecondaryButtonWidget extends StatelessWidget {
  const SecondaryButtonWidget({
    Key? key,
    required this.title,
    required this.onPressed,
    this.width,
  }) : super(key: key);

  final String title;
  final Function onPressed;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder?>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(width: 1, color: Colors.grey),
          )),
          backgroundColor: MaterialStateProperty.all<Color?>(Colors.grey[200]),
        ),
        onPressed: () => onPressed(),
        // Name the button explicitly so the accessible name sits on the
        // button node itself rather than on a separate child text node.
        child: Semantics(
          label: title,
          excludeSemantics: true,
          child: Text(
            title,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
