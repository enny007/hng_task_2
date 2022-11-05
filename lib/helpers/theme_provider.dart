import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  SharedPreferences? prefs;
  String currentTheme = 'system';

  ThemeMode get themeMode {
    if (currentTheme == 'light') {
      return ThemeMode.light;
    } else if (currentTheme == 'dark') {
      return ThemeMode.dark;
    } else {
      return ThemeMode.system;
    }
  }

  initPrefs() async {
    prefs ??= await SharedPreferences.getInstance();
  }

  changeTheme(String theme) async {
    await initPrefs();
    prefs!.setString('theme', theme);
    currentTheme = theme;
    notifyListeners();
  }

  loadPrefs() async {
    await initPrefs();
    currentTheme = prefs!.getString('theme') ?? 'system';
    notifyListeners();
  }
}
