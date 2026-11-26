import 'package:flutter/material.dart';

extension _ColorX on String {
  Color parseColor() {
    final buffer = StringBuffer();
    if (length == 6 || length == 7) buffer.write('ff');
    buffer.write(replaceFirst('#', ''));

    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

final primaryBackgroundColor = '3F51B5'.parseColor();
const primaryCyan = Colors.cyan;

/// `primaryCyan` (#00BCD4) reads at only 2.3:1 against white — well under
/// the 4.5:1 WCAG 2.2 minimum for body text (confirmed by a BrowserStack
/// scan). Fine for borders, fills and icons, which have a lower bar, but
/// not for text. Use this — `Colors.cyan[800]`, the same hue — wherever
/// primaryCyan was being used as a text color on a light background:
/// 4.52:1 against white, so keep any background behind it at pure white
/// or lighter.
final primaryCyanText = '00838F'.parseColor();

/// The counterpart to [primaryCyanText] for text sitting on a dark
/// background (e.g. `primaryBackgroundColor`) instead of a light one —
/// darkening doesn't help there, a light background needs a dark
/// foreground and a dark background needs a light one. `Colors.cyan[100]`:
/// 5.26:1 against primaryBackgroundColor (#3F51B5).
final primaryCyanTextOnDark = 'B2EBF2'.parseColor();

final primaryColorLight = '5856d6'.parseColor();
final primayColorVariantLight = '102da4'.parseColor();

final secondaryColor = 'f4b400'.parseColor();
final secondaryColorVariant = 'bc8500'.parseColor();

final primaryColorDark = '8e83ff'.parseColor();
final primaryColorVariantDark = '5856d6'.parseColor();

final backgroudColorDark = '1a1a1a'.parseColor();

final onlineColor = Colors.green;
final offlineColor = Colors.blue;
final bottomNavLight = Colors.grey[200];
final bottomNavDark = Colors.grey[850];
const unselectedItemColorLight = Colors.grey;
final unselectedItemColorDark = Colors.white54;
const white = Colors.white;
const black = Colors.black;
// Error messages sit on the light grey text-field fill (#E7EDEB). Material
// red 500 reached only 3.1:1 there; red 900 gives 5.5:1 (6.6:1 on white).
final errorColor = 'B71C1C'.parseColor();
final textFieldFillColor = "e7edeb".parseColor();
final textFieldFillColorDark = Colors.grey[700];
final transaprent = "#00FFFFFF".parseColor();

final kioskUnderline = "#ff9800".parseColor();
