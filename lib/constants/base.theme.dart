import 'dart:ui';
import '../extension/string.ext.dart';

class BaseTheme {
  /// 边框
  static Color get borderDark => '#36373F'.color();
  static Color get borderLight => '#fff5f3'.color();

  /// body颜色
  static Color get dark2Dark => '#191B23'.color();
  static Color get dark2Light => '#f6f6f6'.color();

  /// 基础文字颜色
  static Color get fontDark => '#ffffff'.color();
  static Color get fontLight => '#000000'.color();

  /// 选中文字
  static Color get activeDark => '#000000'.color();
  static Color get activeLight => '#000000'.color();

  /// 二级文字颜色
  static Color get subTitleDark => '#A5A8B4'.color();
  static Color get subTitleLight => '#A5A8B4'.color();

  /// 光标
  static Color get cursorColorDark => '#ffffff'.color();
  static Color get cursorColorLight => '#000000'.color();

  /// 错误
  static Color get errorColorDark => '#F14B4B'.color();
  static Color get errorColorLight => '#F14B4B'.color();

  /// 卡片1
  static Color get cardDark => '#36373F'.color();
  static Color get cardLight => '#EBEDF2'.color();

  /// 紫色渐变底色 -- 登陆左上角
  static Color get purpleDark => '#EAEDFF'.color();
  static Color get purpleLight => '#EAEDFF'.color();

  /// 紫色渐变底色 -- 登陆右上角
  static Color get purple2Dark => '#F7F0FF'.color();
  static Color get purple2Light => '#F7F0FF'.color();

  /// 输入框边框
  static Color get fieldBorderDark => '#F2F5FF'.color();
  static Color get fieldBorderLight => '#F2F5FF'.color();

  /// 首页渐变左侧
  static Color get homeBodyStartDark => '#F5F5FB'.color();
  static Color get homeBodyStartLight => '#F5F5FB'.color();

  /// 首页渐变右侧
  static Color get homeBodyEndDark => '#f5f5fb'.color();
  static Color get homeBodyEndLight => '#f5f5fb'.color();

  /// 首页顶部高斯模糊
  static Color get homeTopLeftDark => '#FFE5EF'.color();
  static Color get homeTopLeftLight => '#FFE5EF'.color();

  /// 首页顶部高斯模糊
  static Color get homeTopRightDark => '#F3F0FF'.color();
  static Color get homeTopRightLight => '#F3F0FF'.color();

  /// 底部导航背景
  static Color get navbarBgDark => '#ffffff'.color();
  static Color get navbarBgLight => '#ffffff'.color();

  /// 邀请文字颜色
  static Color get inviteTextDark => '#647AE0'.color();
  static Color get inviteTextLight => '#647AE0'.color();

  /// 邀请码颜色
  static Color get inviteCodeTextDark => '#4459CC'.color();
  static Color get inviteCodeTextLight => '#4459CC'.color();

  /// 邀请码背景颜色
  static Color get inviteCodeBgDark => '#DFE5FF'.color();
  static Color get inviteCodeBgLight => '#DFE5FF'.color();
}
