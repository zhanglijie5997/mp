import 'package:get/get.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/router/routes.dart';
class ActivityData {
  String? name;
  String? svgPath;
  String? url;
  int? type;

  ActivityData({this.name, this.svgPath, this.url, this.type});

  ActivityData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    svgPath = json['svgPath'];
    url = json['url'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['svgPath'] = svgPath;
    data['url'] = url;
    data['type'] = type;
    return data;
  }
}

class HomeActivityController extends GetxController {
  final list = [
    ActivityData(
      name: "每日任务",
      svgPath: Assets.assetsImagesSvgIconTask,
      url: "https://www.baidu.com",
      type: 2,
    ),
    ActivityData(
      name: "积分商城",
      svgPath: Assets.assetsImagesSvgIconIntegra,
      url: "https://www.baidu.com",
      type: 2,
    ),
    ActivityData(
      name: "每日公告",
      svgPath: Assets.assetsImagesSvgIconEveryDayNotify,
      url: "https://www.baidu.com",
      type: 2,
    ),
    ActivityData(
      name: "邀请好友",
      svgPath: Assets.assetsImagesSvgIconInvite,
      url: AppRoutes.invite,
      type: 1,
    ),
  ].cast<ActivityData>().obs;
}
