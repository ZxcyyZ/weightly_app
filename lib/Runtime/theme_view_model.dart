
import 'package:flutter/material.dart';
import 'package:weightly_app/Config/ThemeColours/dark_theme.dart';
import 'package:weightly_app/Config/ThemeColours/light_theme.dart';
import 'package:weightly_app/Config/app_colours.dart';

class ThemeViewModel extends ChangeNotifier{
  bool _isDark = true;
  bool get isDark => _isDark;

  AppColours get colours => _isDark ? DarkTheme() : LightTheme();

  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}