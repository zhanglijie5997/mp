import 'package:get/get.dart';
import 'package:mp/controller/global.controller.dart';
import 'package:mp/services/theme/theme.services.dart';

class AppServices {
  static init() async{
    Get.lazyPut(() => GlobalController(), fenix: true);
    Get.create(() => ThemeServices(), permanent: true);
  }
}