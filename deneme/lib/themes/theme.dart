import 'package:flutter/material.dart';

import '../utils/configuration.dart';

class AppTheme {
  static ThemeData light = lightTheme;
  static ThemeData dark = darkTheme;
}

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  listTileTheme: const ListTileThemeData(dense: true),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.all(12),
    hintStyle: TextStyle(
      fontSize: 16,
      color: Colors.black.withValues(alpha: 0.50),
    ),
    isDense: true,
    border: const OutlineInputBorder(),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: Colors.black),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: lightGrey),
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Colors.black, fontSize: 28),
    displayMedium: TextStyle(color: Colors.black, fontSize: 24),
    displaySmall: TextStyle(color: Colors.black, fontSize: 18),
    headlineMedium: TextStyle(color: Colors.black, fontSize: 16),
    headlineSmall: TextStyle(color: Colors.black, fontSize: 14),
  ),
);

ThemeData darkTheme = ThemeData();
