import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  bool darkTheme = false;

  void toggleTheme() {
    darkTheme = !darkTheme;
    notifyListeners();
  }
}
