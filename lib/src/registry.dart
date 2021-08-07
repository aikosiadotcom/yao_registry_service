import 'package:localstorage/localstorage.dart';
import 'package:yao_core/yao_core.dart';

class YaoRegistryService extends YaoService<YaoRegistryService> {
  late final LocalStorage _storage;
  final String filename;

  YaoRegistryService([this.filename = "registry.json"]);

  Future<Map<String, dynamic>?> get(String key) async {
    return _storage.getItem(key);
  }

  Future<bool> set(String key, Map<String, dynamic> value) async {
    await _storage.setItem(key, value);
    return true;
  }

  Future<bool> delete(String key) async {
    await _storage.deleteItem(key);
    return true;
  }

  @override
  Future<YaoRegistryService> run() async {
    _storage = LocalStorage(this.filename);
    await _storage.ready;
    return this;
  }
}
