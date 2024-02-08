import 'package:get_storage/get_storage.dart';
import 'package:mp/utils/log.utils.dart';

final class StorageKeys {
  static String lang = "lang";
  static String theme = "theme";
}

///  [StorageUtils] 本地存储单例
class StorageUtils {
  static StorageUtils? _instance;

  factory StorageUtils() {
    _instance ??= StorageUtils._internal();
    return _instance!;
  }

  StorageUtils._internal();

  final GetStorage box = GetStorage("meta-u");

  Future<bool> init() {
    LogUtil.w("存储初始化成功");
    return GetStorage.init();
  }

  T? ready<T>(String key) {
    return box.read<T>(key);
  }

  save(String key, dynamic value) {
    box.write(key, value);
  }

  /// 移除本地存储
  void remove(String key) async {
    box.remove(key);
  }

  /// 清空所有
  void clean() {
    box.erase();
  }
}
