import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton()
class SharedPref {
  final SharedPreferences _pref;

  SharedPref(this._pref);

  Future<String> get(String key) async {
    return _pref.getString(key) ?? '';
  }

  Future<void> set(String key, String value) async {
    await _pref.setString(key, value);
  }
}
