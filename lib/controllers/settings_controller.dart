import 'package:flutter/material.dart';
import 'package:lesson45/models/settings.dart';

class SettingsController with ChangeNotifier {
  final Settings settings = Settings(themeMode: ThemeMode.system);

  void toggleTheme(bool isDark) {
    settings.themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
