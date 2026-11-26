import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

ThemeData get appLightTheme {
  return ThemeData(
    colorScheme: ColorScheme.light(
      primary: primaryColorLight,
      primaryContainer: primayColorVariantLight,
      secondary: secondaryColor,
      secondaryContainer: secondaryColorVariant,
    ),
    // fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme: const AppBarTheme(
      elevation: 4,
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: Colors.white,
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(color: Colors.white, width: 4),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelColor: Colors.white.withValues(alpha: 0.5),
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w600,
      ),
    ),
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
    // fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme: const AppBarTheme(
      elevation: 4,
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: primaryColorDark,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: primaryColorDark, width: 4),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelColor: unselectedItemColorDark,
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
