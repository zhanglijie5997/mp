import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/constants/base.theme.dart';

class ThemeServices extends GetxService{

  static ThemeServices get to => Get.find<ThemeServices>();

  ThemeData get dark => ThemeData(
    extensions: [CustomTheme.dark()],
    scaffoldBackgroundColor: BaseTheme.dark2Dark,
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: BaseTheme.fontDark),
      bodyLarge: TextStyle(color: BaseTheme.fontDark),
      bodySmall: TextStyle(color: BaseTheme.fontDark),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: BaseTheme.cursorColorDark
    )
  );

  ThemeData get light => ThemeData(
    extensions: [CustomTheme.light()],
    scaffoldBackgroundColor: BaseTheme.dark2Light,
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: BaseTheme.fontLight),
      bodyLarge: TextStyle(color: BaseTheme.fontLight),
      bodySmall: TextStyle(color: BaseTheme.fontLight),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: BaseTheme.cursorColorLight
    )
  ); 
}


class CustomTheme extends ThemeExtension<CustomTheme>{
  Color? gray;
  Color? dark2;
  Color? fontColor;
  Color? active;
  Color? gray3;
  Color? error;
  CustomTheme({
    this.gray,
    this.dark2,
    this.fontColor,
    this.active,
    this.gray3,
    this.error
  });
  @override
  ThemeExtension<CustomTheme> copyWith({
    Color? gray, 
    Color? dark2,
    Color? fontColor,
    Color? active,
    Color? gray3,
    Color? error,
  }) {
    return CustomTheme(
      gray: gray ?? this.gray,
      dark2: dark2 ?? this.dark2,
      fontColor: fontColor ?? this.fontColor,
      active: active ?? this.active,
      gray3: gray3 ?? this.gray3,
      error: error ?? this.error
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
    active: BaseTheme.activeLight,
    gray3: BaseTheme.subTitleLight,
    error: BaseTheme.errorColorLight
   );

   static CustomTheme dark() => CustomTheme(
    gray: BaseTheme.borderDark,
    dark2: BaseTheme.dark2Dark,
    fontColor: BaseTheme.fontDark,
    active: BaseTheme.activeDark,
    gray3: BaseTheme.subTitleDark,
    error: BaseTheme.errorColorDark
   ); 
}