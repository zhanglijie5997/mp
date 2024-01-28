import 'package:get/get.dart';

/// 全局控制器
class GlobalController extends GetxController {
  static GlobalController get to => Get.find<GlobalController>();

  /// 用户token
  final token = "".obs;
}
