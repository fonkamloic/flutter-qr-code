import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

const CACHE_SEED = "CACHED_SEED";
@lazySingleton

class Persistence {
  final SharedPreferences _preferences;

  Persistence(this._preferences);

  // set seed
  Future<void> setSeed(String value) async =>
      _preferences.setString(CACHE_SEED, value);

  // get seed
  String get getCachedSeed =>
      _preferences.getString(CACHE_SEED ?? "No value in Cache");
}