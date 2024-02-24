import 'package:get/get.dart';
import 'package:mp/api/home/home.request.dart';
import 'package:mp/extension/map.ext.dart';
import 'package:mp/extension/string.ext.dart';
import 'package:mp/models/user_phone_login_model/user_phone_login_model.dart';
import 'package:mp/models/wx_user_model/wx_user_model.dart';
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
  // 用户登陆信息
  final userMsg = (const UserPhoneLoginModel()).obs;
  // 用户具体信息
  final currentUserMsg = (const WxUserModel()).obs;
  // 用户是否实名认证
  final isAuth = false.obs;
  // 修改用户信息存入本地
  changeUserMsg(UserPhoneLoginModel value) {
    try {
      StorageUtils().save(GlobalStorageKey.userMsg, value.toJson().encode());
      GlobalController.to.token.value = value.data?.token ?? "";
      userMsg.value = value;
      getUserData();
      LogUtil.w("value__${StorageUtils().ready(GlobalStorageKey.userMsg)} __ ${GlobalController.to.token.value}");
    } catch (err) {
      LogUtil.w("err__$err");
    }
  }

  getUserData() async {
    final res = await HomeRequest.wxUser();
    LogUtil.w(res.data?.data);
    LogUtil.w("用户信息");
    if (res.data != null) {
      currentUserMsg.value = res.data!;
    }
  }

  removeUserMsg() {
    StorageUtils().remove(GlobalStorageKey.userMsg);
    userMsg.value = (const UserPhoneLoginModel());
    token.value = "";
  }

  @override
  void onInit() {
    debounce(currentUserMsg, (value) {
      isAuth.value = (value.data?.realName != null) && (value.data?.cardNo != null);
    });
    final res = (StorageUtils().ready<String>(GlobalStorageKey.userMsg));
    final json = UserPhoneLoginModel.fromJson((res ?? "{}").decode());
    userMsg.value = json;
    token.value = json.data?.token ?? "";
    super.onInit();
  }
}
