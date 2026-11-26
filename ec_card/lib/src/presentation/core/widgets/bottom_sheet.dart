import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    Key? key,
    this.snapHeight = 0.9,
    this.height,
    this.wrap = false,
    required this.child,
  })  : assert(snapHeight >= 0.0 && snapHeight < 1.0),
        super(key: key);

  final double snapHeight;
  final double? height;
  final bool wrap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        top: false,
        child: wrap
            ? child
            : SizedBox(
                height:
                    height ?? MediaQuery.of(context).size.height * snapHeight,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor),
                  child: child,
                ),
              ),
      ),
    );
  }
}
