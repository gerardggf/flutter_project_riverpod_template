import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_template/app/domain/repositories/prefs_repository.dart';

final themeControllerProvider = ChangeNotifierProvider<ThemeController>(
  (ref) => ThemeController(
    preferencesRepository: ref.watch(prefsRepoProvider),
  ),
);

class ThemeController extends ChangeNotifier {
  ThemeController({
    required this.preferencesRepository,
  }) {
    _darkMode = preferencesRepository.isDarkMode;
  }

  bool _darkMode = false;

  final PrefsRepository preferencesRepository;
  bool get darkMode => _darkMode;

  void updateTheme(bool darkMode) {
    _darkMode = darkMode;
    preferencesRepository.setThemeMode(_darkMode);
    notifyListeners();
  }
}
