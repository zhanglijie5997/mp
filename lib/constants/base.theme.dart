import 'dart:ui';
import '../extension/string.ext.dart';

class BaseTheme {
  /// 边框
  static Color get borderDark => '#36373F'.color();
  static Color get borderLight => '#ffffffa6'.color();

  /// body颜色
  static Color get dark2Dark => '#191B23'.color();
  static Color get dark2Light => '#ffffff'.color();

  /// 基础文字颜色
  static Color get fontDark => '#ffffff'.color();
  static Color get fontLight => '#000000'.color();

  /// 选中文字
  static Color get activeDark => '#7B61FF'.color();
  static Color get activeLight => '#7B61FF'.color();

  /// 备注文字颜色
  static Color get remarkColorDark => '#666666'.color();
  static Color get remarkColorLight => '#666666'.color();

  /// 备注文字颜色
  static Color get warningColorDark => '#F3B436'.color();
  static Color get warningColorLight => '#F3B436'.color();

  /// 备注文字颜色
  static Color get warningDesColorDark => '#C1874D'.color();
  static Color get warningDesColorLight => '#C1874D'.color();

  /// 折扣文字颜色
  static Color get moneycolorDark => '#F14B4B'.color();
  static Color get moneycolorLight => '#F14B4B'.color();

  /// 选中背景颜色
  static Color get selectBgDark => '#F3B436'.color();
  static Color get selectBgLight => '#F3B436'.color();

  /// 底部导航栏颜色
  static Color get bottomBarBgDark => '#252525'.color();
  static Color get bottomBarBgLight => '#252525'.color();

  /// 标签颜色
  static Color get tagBgDark => '#FFEAC0'.color();
  static Color get tagBgLight => '#FFEAC0'.color();

  /// 标签文字颜色
  static Color get tagTextDark => '#353535'.color();
  static Color get tagTextLight => '#353535'.color();

  /// body颜色
  static Color get defaultBgDark => '#151515'.color();
  static Color get defaultBgLight => '#151515'.color();

  /// 子标题颜色
  static Color get subtitleDark => '#cccccc'.color();
  static Color get subtitleLight => '#cccccc'.color();
}
