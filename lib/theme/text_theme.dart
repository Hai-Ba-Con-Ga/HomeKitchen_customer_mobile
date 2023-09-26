import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextStyle MainTextStyle = TextStyle(
  fontFamily: GoogleFonts.montserrat().fontFamily,
  fontSize: 60.0,
  fontWeight: FontWeight.normal,
);

final TextTheme MainTextTheme = TextTheme(
  bodyLarge: MainTextStyle,
  displayLarge: MainTextStyle.copyWith(
    fontSize: 60.0,
    fontWeight: FontWeight.bold,
  ),
  bodyMedium: MainTextStyle,
  displayMedium: MainTextStyle.copyWith(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  ),
  bodySmall: MainTextStyle,
  displaySmall: MainTextStyle.copyWith(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  ),
);
