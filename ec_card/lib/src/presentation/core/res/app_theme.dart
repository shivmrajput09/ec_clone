// lib/src/presentation/core/res/app_theme.dart

import 'package:flutter/material.dart';
import 'app_colors.dart';

ThemeData get appLightTheme {
  return ThemeData(
    colorScheme: ColorScheme.light(
      primary: primaryColorLight,
      primaryContainer: primayColorVariantLight,
      secondary: secondaryColor,
      secondaryContainer: secondaryColorVariant,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black87,
    ),
    scaffoldBackgroundColor: Colors.white,
  );
}

ThemeData get appDarkTheme {
  return ThemeData(
    colorScheme: ColorScheme.dark(
      primary: primaryColorDark,
      primaryContainer: primaryColorVariantDark,
      secondary: secondaryColor,
      secondaryContainer: secondaryColor,
    ),
    scaffoldBackgroundColor: backgroudColorDark,
  );
}