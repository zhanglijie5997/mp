import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/constants/base.theme.dart';

class ThemeServices extends GetxService{

  static ThemeServices get to => Get.find<ThemeServices>();

  ThemeData get dark => ThemeData(
    extensions: [CustomTheme.dark()],
    scaffoldBackgroundColor: BaseTheme.dark2Dark,
  );

  ThemeData get light => ThemeData(
    extensions: [CustomTheme.light()],
    scaffoldBackgroundColor: BaseTheme.dark2Light
  ); 
}


class CustomTheme extends ThemeExtension<CustomTheme>{
  Color? gray;
  Color? dark2;
  Color? fontColor;
  Color? active;
  CustomTheme({
    this.gray,
    this.dark2,
    this.fontColor,
    this.active
  });
  @override
  ThemeExtension<CustomTheme> copyWith({
    Color? gray, 
    Color? dark2,
    Color? fontColor,
    Color? active,
  }) {
    return CustomTheme(
      gray: gray ?? this.gray,
      dark2: dark2 ?? this.dark2,
      fontColor: fontColor ?? this.fontColor,
      active: active ?? this.active
    );
  }

  @override
  ThemeExtension<CustomTheme> lerp(ThemeExtension<CustomTheme>? other, double t) {
   return CustomTheme();
  }
  

   static CustomTheme light() => CustomTheme(
    gray: BaseTheme.borderLight,
    dark2: BaseTheme.dark2Light,
    fontColor: BaseTheme.fontLight,
    active: BaseTheme.activeLight
   );

   static CustomTheme dark() => CustomTheme(
    gray: BaseTheme.borderDark,
    dark2: BaseTheme.dark2Dark,
    fontColor: BaseTheme.fontDark,
    active: BaseTheme.activeDark
   ); 
}