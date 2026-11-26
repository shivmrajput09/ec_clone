import 'package:flutter/material.dart';

/// Which back-arrow glyph a screen was already using, so this can swap in
/// as a drop-in replacement without changing every screen's visual style.
enum BackIconVariant { ios, iosNew, material }

/// Points toward the reading-start direction so back navigation reads
/// correctly under RTL locales.
///
/// `arrow_back_ios`, `arrow_back_ios_new` and `arrow_back` all ship with
/// `IconData.matchTextDirection: true` in the Flutter SDK, so a plain
/// [Icon] already auto-mirrors them under RTL (see icon.dart's handling of
/// `matchTextDirection`) — this widget deliberately does NOT re-select a
/// "forward" icon under RTL, since that would flip an already-flipped
/// glyph back to the wrong direction.
class BackIcon extends StatelessWidget {
  const BackIcon({
    Key? key,
    this.color,
    this.variant = BackIconVariant.ios,
    this.semanticLabel,
  }) : super(key: key);

  final Color? color;
  final BackIconVariant variant;

  /// Read by screen readers. The glyph alone gives the enclosing button no
  /// name, so a back button is announced only as "double-tap to activate".
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final IconData icon;
    switch (variant) {
      case BackIconVariant.ios:
        icon = Icons.arrow_back_ios;
        break;
      case BackIconVariant.iosNew:
        icon = Icons.arrow_back_ios_new;
        break;
      case BackIconVariant.material:
        icon = Icons.arrow_back;
        break;
    }
    return Icon(icon, color: color, semanticLabel: semanticLabel);
  }
}
