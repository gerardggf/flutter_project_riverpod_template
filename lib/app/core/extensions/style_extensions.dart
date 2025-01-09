import 'package:flutter/material.dart';

extension ThemeContextStyleExtension on BuildContext {
  TextStyle? get themeHL => Theme.of(this).textTheme.headlineLarge;
  TextStyle? get themeHM => Theme.of(this).textTheme.headlineMedium;
  TextStyle? get themeHS => Theme.of(this).textTheme.headlineSmall;

  TextStyle? get themeBL => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get themeBM => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get themeBS => Theme.of(this).textTheme.bodySmall;

  TextStyle? get themeLL => Theme.of(this).textTheme.labelLarge;
  TextStyle? get themeLM => Theme.of(this).textTheme.labelMedium;
  TextStyle? get themeLS => Theme.of(this).textTheme.labelSmall;

  TextStyle? get themeTL => Theme.of(this).textTheme.titleLarge;
  TextStyle? get themeTM => Theme.of(this).textTheme.titleMedium;
  TextStyle? get themeTS => Theme.of(this).textTheme.titleSmall;
}
