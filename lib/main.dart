import 'package:flutter/material.dart';
import 'package:islami_app1/app_theme.dart';
import 'package:islami_app1/home_screen.dart';
import 'package:islami_app1/tabs/hadeth/hadeth_details_screen.dart';
import 'package:islami_app1/tabs/quran/sura_delails_screen.dart';
import 'package:islami_app1/tabs/seetings/settings_provider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => SettingsProvider(),
      child: IslamiApp()));
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDelailsScreen.routeName: (_) => SuraDelailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
      },
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: settingsProvider.themeMode,
    );
  }
}
