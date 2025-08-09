import 'package:get_storage/get_storage.dart';

class AppLocalStorage {
  static final AppLocalStorage _instance = AppLocalStorage._internal();

  factory AppLocalStorage() {
    return _instance;
  }

  AppLocalStorage._internal();

  final _storage = GetStorage();

  Future<void> saveDate(String key, Type value) async {
    await _storage.write(key, value);
  }

  Type? readData<Type>(String key) {
    return _storage.read<Type>(key);
  }

  Future<void> removeData(String key) async {
    return await _storage.remove(key);
  }

  Future<void> clearAll() async {
    return await _storage.erase();
  }
}
