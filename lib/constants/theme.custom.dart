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

  /// 输入框边框
  Color? fieldBorder;

  /// 首页渐变左侧
  Color? homeBodyStart;

  /// 首页渐变右侧
  Color? homeBodyEnd;

  /// 首页顶部高斯模糊
  Color? homeTopLeft;

  /// 首页顶部高斯模糊
  Color? homeTopRight;

  /// 底部导航背景
  Color? navbarBg;
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

    /// 输入框边框
    this.fieldBorder,

    /// 首页渐变左侧
    this.homeBodyStart,

    /// 首页渐变右侧
    this.homeBodyEnd,

    /// 首页顶部高斯模糊
    this.homeTopLeft,

    /// 首页顶部高斯模糊
    this.homeTopRight,

    /// 底部导航背景
    this.navbarBg,
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
    Color? fieldBorder,
    Color? homeBodyStart,
    Color? homeBodyEnd,
    Color? homeTopLeft,
    Color? homeTopRight,
    Color? navbarBg,
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
      fieldBorder: fieldBorder ?? this.fieldBorder,
      homeBodyStart: homeBodyStart ?? this.homeBodyStart,
      homeBodyEnd: homeBodyEnd ?? this.homeBodyEnd,
      homeTopLeft: homeTopLeft ?? this.homeTopLeft,
      homeTopRight: homeTopRight ?? this.homeTopRight,
      navbarBg: navbarBg ?? this.navbarBg,
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
        fieldBorder: BaseTheme.fieldBorderLight,
        homeBodyStart: BaseTheme.homeBodyStartLight,
        homeBodyEnd: BaseTheme.homeBodyEndLight,
        homeTopLeft: BaseTheme.homeTopLeftLight,
        homeTopRight: BaseTheme.homeTopRightLight,
        navbarBg: BaseTheme.navbarBgLight,
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
        fieldBorder: BaseTheme.fieldBorderDark,
        homeBodyStart: BaseTheme.homeBodyStartDark,
        homeBodyEnd: BaseTheme.homeBodyEndDark,
        homeTopLeft: BaseTheme.homeTopLeftDark,
        homeTopRight: BaseTheme.homeTopRightDark,
        navbarBg: BaseTheme.navbarBgDark,
      );
}
