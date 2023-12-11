import 'package:get/get.dart';
import 'package:mp/src/controller/global.controller.dart';

class AppServices {
  static init() async{
    Get.lazyPut(() => GlobalController(), fenix: true);
  }
}