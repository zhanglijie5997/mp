import 'package:get/get.dart';
import 'package:mp/extension/map.ext.dart';
import 'package:mp/extension/string.ext.dart';
import 'package:mp/models/user_phone_login_model/user_phone_login_model.dart';
import 'package:mp/utils/log.utils.dart';
import 'package:mp/utils/storage.utils.dart';

class GlobalStorageKey {
  static String get userMsg => "userMsg";
}

/// 全局控制器
class GlobalController extends GetxController {
  static GlobalController get to => Get.find<GlobalController>();

  /// 用户token
  final token = "".obs;
  // 用户信息
  final userMsg = (const UserPhoneLoginModel()).obs;

  // 修改用户信息存入本地
  changeUserMsg(UserPhoneLoginModel value) {
    try {
      StorageUtils().save(GlobalStorageKey.userMsg, value.toJson().encode());

      LogUtil.w("value__${StorageUtils().ready(GlobalStorageKey.userMsg)}");
    } catch (err) {
      LogUtil.w("err__$err");
    }
  }

  removeUserMsg() {
    StorageUtils().remove(GlobalStorageKey.userMsg);
    userMsg.value = (const UserPhoneLoginModel());
    token.value = "";
  }

  @override
  void onInit() {
    final res = (StorageUtils().ready<String>(GlobalStorageKey.userMsg));
    final json = UserPhoneLoginModel.fromJson((res ?? "{}").decode());
    userMsg.value = json;
    token.value = json.data?.token ?? "";
    super.onInit();
  }
}
