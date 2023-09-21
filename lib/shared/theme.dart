import 'package:shared_preferences/shared_preferences.dart';

class ThemeSharedPreferences {
  static const String preferenceKey = "themePreference";

  void setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(preferenceKey, value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(preferenceKey) ?? false;
  }

  void removeTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(preferenceKey);
  }
}
