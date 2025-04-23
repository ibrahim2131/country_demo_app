import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF4285F4), // Gemini-like subtle blue
    secondary: Color(0xFFE8EAED), // Gemini-like gentle gray
    background: Color(0xFFFFFFFF),
    surface: Color(0xFFFFFFFF),
    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFF202124),
    onBackground: Color(0xFF202124),
    onSurface: Color(0xFF202124),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF4285F4),
    titleTextStyle: TextStyle(color: Color(0xFFFFFFFF), fontSize: 18),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFF202124)),
    bodyMedium: TextStyle(color: Color(0xFF5F6368)),
    bodySmall: TextStyle(color: Color(0xFF70757A)),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF669CF3), // Gemini-like desaturated blue
    secondary: Color(0xFF5F6368), // Gemini-like medium gray
    background: Color(0xFF121212),
    surface: Color(0xFF303134),
    onPrimary: Color(0xFFE8EAED),
    onSecondary: Color(0xFFE8EAED),
    onBackground: Color(0xFFE8EAED),
    onSurface: Color(0xFFE8EAED),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF669CF3),
    titleTextStyle: TextStyle(color: Color(0xFFE8EAED), fontSize: 18),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFFE8EAED)),
    bodyMedium: TextStyle(color: Color(0xFF9AA0A6)),
    bodySmall: TextStyle(color: Color(0xFFBDC1C6)),
  ),
);