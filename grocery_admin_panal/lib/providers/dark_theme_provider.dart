import 'package:flutter/material.dart';

import '../services/dark_them_preferences.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemeService darkThemeService = DarkThemeService();
  bool _darkTheme = false;

  bool get getDarkTheme => _darkTheme;

  set setDarkTheme(bool value) {
    _darkTheme = value;
    darkThemeService.setDarkTheme(value);
    notifyListeners();
  }
}
