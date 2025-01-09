import 'package:riverpod_template/app/domain/enums/prefs_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/repositories/prefs_repository.dart';

class PrefsRepositoryImpl implements PrefsRepository {
  PrefsRepositoryImpl(this._sharedPrefs);

  final SharedPreferences _sharedPrefs;

  @override
  bool get isDarkMode =>
      _sharedPrefs.getBool(PrefsEnum.isDarkMode.name) ?? false;

  @override
  Future<bool> setThemeMode(bool value) async {
    return await _sharedPrefs.setBool(
      PrefsEnum.isDarkMode.name,
      value,
    );
  }
}
