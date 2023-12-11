import 'package:get_storage/get_storage.dart';

///  [StorageUtils] 本地存储单例
class StorageUtils {
  static StorageUtils? _instance;

  factory StorageUtils() {
    _instance ??= StorageUtils._internal();
    return _instance!;
  }

  StorageUtils._internal();

  final GetStorage box = GetStorage('mp.storage');

  /// 移除本地存储
  void remove(String key) async {
    box.remove(key);
  }

  /// 清空所有
  void clean() {
    box.erase();
  }
}
