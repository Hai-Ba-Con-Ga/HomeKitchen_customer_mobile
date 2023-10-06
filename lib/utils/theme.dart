import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData mainTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.orangeAccent,
  ),
  textTheme: GoogleFonts.signikaTextTheme(),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
    ),
  ),
  useMaterial3: true,
);
