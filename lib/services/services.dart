import 'package:get/get.dart';
import 'package:mp/controller/global.controller.dart';
import 'package:mp/services/language/language.services.dart';
import 'package:mp/services/theme/theme.services.dart';
import 'package:mp/utils/storage.utils.dart';

class AppServices {
  static init() async {
    await StorageUtils().init();
    Get.lazyPut(() => GlobalController(), fenix: true);
    Get.lazyPut(() => ThemeServices(), fenix: true);
    Get.lazyPut(() => LanguageServices(), fenix: true);
  }
}
