import 'package:ec_card_app/src/presentation/core/res/readable_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const fallback = Color(0xFF3B82F6);

  group('colorFromHex', () {
    test('reads the shapes an admin can save', () {
      expect(colorFromHex('#8B5CF6', fallback: fallback), const Color(0xFF8B5CF6));
      expect(colorFromHex('8B5CF6', fallback: fallback), const Color(0xFF8B5CF6));
      expect(colorFromHex('#FF8B5CF6', fallback: fallback), const Color(0xFF8B5CF6));
    });

    test('falls back rather than throwing on anything else', () {
      for (final value in ['', '#GGGGGG', 'blue', '#12345']) {
        expect(colorFromHex(value, fallback: fallback), fallback, reason: value);
      }
    });
  });

  group('readableTextColor', () {
    test('picks the colour with the better ratio, not the brighter look', () {
      // Bright enough that a brightness rule chooses white, which fails AA.
      const blue = Color(0xFF3B82F6);
      final chosen = readableTextColor(blue);

      expect(chosen, isNot(Colors.white));
      expect(contrastRatio(blue, chosen),
          greaterThan(contrastRatio(blue, Colors.white)));
    });

    test('keeps white on a dark background', () {
      expect(readableTextColor(const Color(0xFF1B1B1B)), Colors.white);
    });
  });

  group('secondaryTextColor', () {
    test('keeps the full colour where fading would fail AA', () {
      const blue = Color(0xFF3B82F6);
      final foreground = readableTextColor(blue);

      expect(secondaryTextColor(blue, foreground), foreground);
      expect(contrastRatio(blue, secondaryTextColor(blue, foreground)),
          greaterThanOrEqualTo(4.5));
    });

    test('fades it where there is room to', () {
      const amber = Color(0xFFF59E0B);
      final foreground = readableTextColor(amber);
      final secondary = secondaryTextColor(amber, foreground);

      expect(secondary, isNot(foreground));
      expect(contrastRatio(amber, secondary), greaterThanOrEqualTo(4.5));
    });
  });

  test('contrastRatio matches the WCAG scale', () {
    expect(contrastRatio(Colors.black, Colors.white), closeTo(21, 0.01));
    expect(contrastRatio(Colors.white, Colors.white), closeTo(1, 0.01));
  });
}
