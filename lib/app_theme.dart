import 'package:flutter/material.dart';

class AppTheme {
  static const lightPrimary = Color(0xFFB7935F);
  static const darkPrimary = Color(0xFF141A2E);
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF242424);
  static const gold = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: black,
      unselectedItemColor: white,
      backgroundColor: lightPrimary,
    ),
  );
  static ThemeData darkTheme = ThemeData();
}
