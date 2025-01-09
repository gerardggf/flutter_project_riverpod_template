import 'package:flutter/material.dart';

extension ThemeModecontextExtension on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}
