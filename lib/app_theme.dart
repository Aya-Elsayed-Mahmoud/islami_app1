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
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: black,

        centerTitle: true,
        titleTextStyle:
        TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: black,
        ),
      ),
      textTheme: TextTheme(
        headlineSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: black,),
        titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: black),


      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStatePropertyAll(AppTheme.white),
      )
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: gold,
      unselectedItemColor: white,
      backgroundColor: darkPrimary,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: white,
      centerTitle: true,
      titleTextStyle:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: white,
      ),
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: white,),
      titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: gold),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStatePropertyAll(AppTheme.white),
    ),

  );
}
