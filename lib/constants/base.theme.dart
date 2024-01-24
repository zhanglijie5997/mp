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
  static Color get activeDark => '#1662DF'.color();
  static Color get activeLight => '#1662DF'.color();

  /// 二级文字颜色
  static Color get subTitleDark => '#828282'.color();
  static Color get subTitleLight => '#828282'.color();

  /// 光标
  static Color get cursorColorDark => '#ffffff'.color();
  static Color get cursorColorLight => '#000000'.color();

  /// 错误
  static Color get errorColorDark => '#F14B4B'.color();
  static Color get errorColorLight => '#F14B4B'.color();

  /// 卡片1
  static Color get cardDark => '#36373F'.color();
  static Color get cardLight => '#EBEDF2'.color();
}
