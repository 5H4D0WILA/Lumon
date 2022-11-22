import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  // Consistent Colors:
  static const backgroundColor = Color(0xff111016);
  static const textColor = Color(0xffffffff);
  static const textHighlightColor = Color(0xff916BE3);

  // Other Colors:
  static const errorColor = Color(0xffC31B10);
  static const ff22272e = Color(0xff22272e);
  static const ff24292f = Color(0xff24292f);
  static const ff2d333b = Color(0xff2d333b);
  static const ff373e47 = Color(0xff373e47);
  static const ff52565a = Color(0xff52565a);
  static const ffadbac7 = Color(0xffadbac7);
  static const ffd0d7de = Color(0xffd0d7de);
  static const ffd8dee4 = Color(0xffd8dee4);
  static const fff6f8fa = Color(0xfff6f8fa);

  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: false,
      color: Colors.transparent,
      titleTextStyle: TextStyle(
        color: textColor,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
    ),
    fontFamily: GoogleFonts.poppins().fontFamily,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: textColor,
      onPrimary: textColor,
      secondary: textHighlightColor,
      onSecondary: textHighlightColor,
      error: errorColor,
      onError: textColor,
      background: fff6f8fa,
      onBackground: ff24292f,
      surface: ff24292f,
      onSurface: ff52565a,
    ),
  );
}
