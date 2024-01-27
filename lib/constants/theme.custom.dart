import 'package:flutter/material.dart';
import 'package:mp/constants/base.theme.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  /// 边框
  Color? gray;

  /// body颜色
  Color? dark2;

  /// 基础文字颜色
  Color? fontColor;

  /// 选中文字
  Color? active;

  /// 二级文字颜色
  Color? gray3;

  /// 光标
  Color? costomColor;

  /// 错误
  Color? error;

  /// 卡片1
  Color? card;

  /// 紫色渐变底色 -- 登陆左上角
  Color? purple;

  /// 紫色渐变底色 -- 登陆右上角
  Color? purple2;
  CustomTheme({
    /// 边框
    this.gray,

    /// body颜色
    this.dark2,

    /// 基础文字颜色
    this.fontColor,

    /// 选中文字
    this.active,

    /// 二级文字颜色
    this.gray3,

    /// 光标
    this.costomColor,

    /// 错误
    this.error,

    /// 卡片1
    this.card,

    /// 紫色渐变底色 -- 登陆左上角
    this.purple,

    /// 紫色渐变底色 -- 登陆右上角
    this.purple2,
  });
  @override
  ThemeExtension<CustomTheme> copyWith({
    Color? gray,
    Color? dark2,
    Color? fontColor,
    Color? active,
    Color? gray3,
    Color? costomColor,
    Color? error,
    Color? card,
    Color? purple,
    Color? purple2,
  }) {
    return CustomTheme(
      gray: gray ?? this.gray,
      dark2: dark2 ?? this.dark2,
      fontColor: fontColor ?? this.fontColor,
      active: active ?? this.active,
      gray3: gray3 ?? this.gray3,
      costomColor: costomColor ?? this.costomColor,
      error: error ?? this.error,
      card: card ?? this.card,
      purple: purple ?? this.purple,
      purple2: purple2 ?? this.purple2,
    );
  }

  @override
  ThemeExtension<CustomTheme> lerp(
      ThemeExtension<CustomTheme>? other, double t) {
    return CustomTheme();
  }

  static CustomTheme get light => CustomTheme(
        gray: BaseTheme.borderLight,
        dark2: BaseTheme.dark2Light,
        fontColor: BaseTheme.fontLight,
        active: BaseTheme.activeLight,
        gray3: BaseTheme.subTitleLight,
        costomColor: BaseTheme.cursorColorLight,
        error: BaseTheme.errorColorLight,
        card: BaseTheme.cardLight,
        purple: BaseTheme.purpleLight,
        purple2: BaseTheme.purple2Light,
      );
  static CustomTheme get dark => CustomTheme(
        gray: BaseTheme.borderDark,
        dark2: BaseTheme.dark2Dark,
        fontColor: BaseTheme.fontDark,
        active: BaseTheme.activeDark,
        gray3: BaseTheme.subTitleDark,
        costomColor: BaseTheme.cursorColorDark,
        error: BaseTheme.errorColorDark,
        card: BaseTheme.cardDark,
        purple: BaseTheme.purpleDark,
        purple2: BaseTheme.purple2Dark,
      );
}
