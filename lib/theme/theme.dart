// Flutter Dependencies
import 'package:flutter/material.dart';

// Project Dependencies
import '../shared/theme.dart';


class ThemeModel extends ChangeNotifier {
  late bool _isDark;
  late ThemeSharedPreferences themeSharedPreferences;
  bool get isDark => _isDark;
  ThemeModel() {
    _isDark = false;
    themeSharedPreferences = ThemeSharedPreferences();
    getThemePreferences();
  }

  set isDark(bool value) {
    _isDark = value;
    themeSharedPreferences.setTheme(value);
    notifyListeners();
  }

  getThemePreferences() async {
    _isDark = await themeSharedPreferences.getTheme();
    notifyListeners();
  }

  void toggleTheme() {
    isDark = !isDark;
  }
}
