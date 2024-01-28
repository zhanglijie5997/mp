import 'package:get/get.dart';
import 'package:mp/constants/assets.dart';

enum SettingItemEnum {
  avatar, // 修改头像
  nickname, // 修改昵称
  author, // 实名认证
  address, // 钱包地址-复制
  password, // 修改密码
  customServices, // 我的客服
  aboutUs, // 关于我们
  receiveAddress, // 收货地址
  writeOff, // 注销
}

class SettingItem {
  String? name;
  String? value;
  String? svgPath;
  String? img;
  SettingItemEnum? type;
  SettingItem({this.name, this.value, this.svgPath, this.img, this.type});

  SettingItem.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
    svgPath = json['svgPath'];
    img = json['img'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['value'] = value;
    data['svgPath'] = svgPath;
    data['img'] = img;
    data['type'] = type;
    return data;
  }
}

class SettingController extends GetxController {
  final list = [
    SettingItem(
        name: "头像",
        img: "",
        svgPath: Assets.assetsImagesSvgIconArrow,
        type: SettingItemEnum.avatar),
    SettingItem(
        name: "昵称",
        svgPath: Assets.assetsImagesSvgIconArrow,
        value: "测试一号",
        type: SettingItemEnum.nickname),
    SettingItem(
      name: "手机号",
      svgPath: "",
      value: "110",
      // type: SettingItemEnum
    ),
    SettingItem(
        name: "实名认证",
        svgPath: Assets.assetsImagesSvgIconArrow,
        value: "未实名",
        type: SettingItemEnum.author),
  ].cast<SettingItem>().obs;

  final list2 = [
    SettingItem(
        name: "钱包地址",
        svgPath: Assets.assetsImagesSvgIconCopy,
        value: "123456",
        type: SettingItemEnum.address),
    SettingItem(
        name: "修改密码",
        svgPath: Assets.assetsImagesSvgIconArrow,
        value: "",
        type: SettingItemEnum.password),
  ].cast<SettingItem>().obs;

  final list3 = [
    SettingItem(
        name: "我的客服",
        svgPath: Assets.assetsImagesSvgIconCopy,
        value: "123456",
        type: SettingItemEnum.customServices),
    SettingItem(
        name: "关于我们",
        svgPath: Assets.assetsImagesSvgIconArrow,
        value: "",
        type: SettingItemEnum.aboutUs),
  ].cast<SettingItem>().obs;

  final list4 = [
    SettingItem(
        name: "收货地址",
        svgPath: Assets.assetsImagesSvgIconArrow,
        value: "123456",
        type: SettingItemEnum.receiveAddress),
  ].cast<SettingItem>().obs;

  final list5 = [
    SettingItem(
        name: "注销账号",
        svgPath: Assets.assetsImagesSvgIconArrow,
        value: "",
        type: SettingItemEnum.writeOff),
  ].cast<SettingItem>().obs;

  handleClick(SettingItem e) {}
}
