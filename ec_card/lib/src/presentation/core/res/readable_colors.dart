import 'package:flutter/material.dart';

/// Colours that arrive from the backend, and text that has to stay readable
/// on top of them.

/// Parses the `#RRGGBB` (or `#AARRGGBB`) value an admin picked, falling back
/// to [fallback] for anything unreadable rather than throwing in a list.
Color colorFromHex(String value, {required Color fallback}) {
  var hex = value.replaceAll('#', '').trim();
  if (hex.length == 6) hex = 'FF$hex';
  if (hex.length != 8) return fallback;

  final parsed = int.tryParse(hex, radix: 16);
  return parsed == null ? fallback : Color(parsed);
}

/// The WCAG contrast ratio between two colours, from 1 (identical) to 21.
double contrastRatio(Color a, Color b) {
  final lighter = a.computeLuminance() >= b.computeLuminance() ? a : b;
  final darker = identical(lighter, a) ? b : a;

  return (lighter.computeLuminance() + 0.05) /
      (darker.computeLuminance() + 0.05);
}

/// Whichever of [light] and [dark] reads better on [background].
///
/// Decided on the contrast ratio WCAG is measured by, not on brightness: a
/// mid-range blue is bright enough to look like it wants white text while
/// failing AA with it.
Color readableTextColor(
  Color background, {
  Color light = Colors.white,
  Color dark = const Color(0xFF0F172A),
}) =>
    contrastRatio(background, light) >= contrastRatio(background, dark)
        ? light
        : dark;

/// A quieter shade of [foreground] for secondary lines, but only while it
/// still meets the AA ratio on [background].
///
/// Fading text is the usual way to mark it as secondary, and on a mid blue it
/// was enough to drop the line below 4.5:1 on its own.
Color secondaryTextColor(
  Color background,
  Color foreground, {
  double opacity = 0.85,
  double minRatio = 4.5,
}) {
  final dimmed = Color.alphaBlend(foreground.withValues(alpha: opacity), background);
  return contrastRatio(background, dimmed) >= minRatio ? dimmed : foreground;
}
