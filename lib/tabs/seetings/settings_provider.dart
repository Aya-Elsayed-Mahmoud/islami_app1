import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String language = 'en';

  bool get isDark => themeMode == ThemeMode.dark;

  String get backgroundImagePath =>
      'assets/images/${isDark ? 'bg' : 'background'}.png';

  void changeTheme(ThemeMode selectedThemeMode) {
    themeMode = selectedThemeMode;
    notifyListeners();
  }

  void changeLanguage(String lang) {
    language = lang;
    notifyListeners();
  }
}
