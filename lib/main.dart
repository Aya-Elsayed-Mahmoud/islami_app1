import 'package:flutter/material.dart';
import 'package:islami_app1/app_theme.dart';
import 'package:islami_app1/home_screen.dart';
import 'package:islami_app1/tabs/quran/sura_delails_screen.dart';

void main() {
  runApp(IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDelailsScreen.routeName: (_) => SuraDelailsScreen(),
      },
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
