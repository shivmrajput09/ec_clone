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
final primaryCyanText = '00838F'.parseColor();
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
final errorColor = 'B71C1C'.parseColor();
final textFieldFillColor = 'e7edeb'.parseColor();
final textFieldFillColorDark = Colors.grey[700];
final transaprent = '#00FFFFFF'.parseColor();
final kioskUnderline = '#ff9800'.parseColor();
