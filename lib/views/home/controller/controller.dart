import 'package:get/get.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/models/home/navbar.model.dart';



class HomeController extends GetxController {
  final count = 0.obs;
  final tabbar = [
    NavBarModel(name: "首页", assets: Assets.assetsImagesSvgIconHome, index: 0),
    NavBarModel(name: "搜索", assets: Assets.assetsImagesSvgIconSearch, index: 1),
    NavBarModel(name: "添加", assets: Assets.assetsImagesSvgIconAdd, index: 2),
    NavBarModel(name: "购物车", assets: Assets.assetsImagesSvgIconCart, index: 3),
    NavBarModel(name: "我的", assets: Assets.assetsImagesSvgIconMe, index: 4),
  ].cast<NavBarModel>();

  final active = "0".obs;
  setCount() {
    count.value++;
    // 手动更新，细粒控制
    update();
  }
}