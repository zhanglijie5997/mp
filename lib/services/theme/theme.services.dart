import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mp/constants/base.theme.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/utils/storage.utils.dart';

const themeLocal = {
  "light": ThemeMode.light,
  "dark": ThemeMode.dark,
  "system": ThemeMode.system
};
class ThemeServices extends GetxController{
  static ThemeServices get to => Get.find<ThemeServices>();

  ThemeMode mode = ThemeMode.system;

  updateStatusBar() {
    // #兼容web，非web直接打开
    if (!kIsWeb) {
      SystemUiOverlayStyle uiStyle = SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark);

      if (mode == ThemeMode.dark) {
        uiStyle = SystemUiOverlayStyle.light.copyWith(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: Colors.black,
            statusBarIconBrightness: Brightness.light);
      }
      SystemChrome.setSystemUIOverlayStyle(uiStyle);
    }
  }

  handleSetTheme(String value) {
    final current = themeLocal[value] ?? ThemeMode.system;
    mode = current;
    print(mode);
    Get.changeThemeMode(current);
    updateStatusBar();

  }

  @override
  void onInit() {
    final currentTheme = StorageUtils().ready<String?>(StorageKeys.theme);
    if (currentTheme != null) {
      mode = themeLocal[currentTheme] ?? ThemeMode.system;

    }else {
      handleSetTheme("dark");
    }
    updateStatusBar();

    super.onInit();
  }

  ThemeData get dark => ThemeData(
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: BaseTheme.dark2Dark,
      titleTextStyle: Get.context?.theme.appBarTheme.titleTextStyle?.copyWith(
        color: Get.context!.customTheme?.fontColor
      )
    ),
    extensions: [CustomTheme.dark()],
    scaffoldBackgroundColor: BaseTheme.dark2Dark,
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: BaseTheme.fontDark),
      bodyLarge: TextStyle(color: BaseTheme.fontDark),
      bodySmall: TextStyle(color: BaseTheme.fontDark),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: BaseTheme.cursorColorDark
    ),

  );

  ThemeData get light => ThemeData(
    appBarTheme:  AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: BaseTheme.dark2Light,
      titleTextStyle: Get.context?.theme.appBarTheme.titleTextStyle?.copyWith(
        color: Get.context!.customTheme?.fontColor
      )
    ),
    
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
  Color? card;
  CustomTheme({
    this.gray,
    this.dark2,
    this.fontColor,
    this.active,
    this.gray3,
    this.error,
    this.card
  });
  @override
  ThemeExtension<CustomTheme> copyWith({
    Color? gray, 
    Color? dark2,
    Color? fontColor,
    Color? active,
    Color? gray3,
    Color? error,
    Color? card,
  }) {
    return CustomTheme(
      gray: gray ?? this.gray,
      dark2: dark2 ?? this.dark2,
      fontColor: fontColor ?? this.fontColor,
      active: active ?? this.active,
      gray3: gray3 ?? this.gray3,
      error: error ?? this.error,
      card: card ?? this.card,
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
    error: BaseTheme.errorColorLight,
    card: BaseTheme.cardLight
   );

   static CustomTheme dark() => CustomTheme(
    gray: BaseTheme.borderDark,
    dark2: BaseTheme.dark2Dark,
    fontColor: BaseTheme.fontDark,
    active: BaseTheme.activeDark,
    gray3: BaseTheme.subTitleDark,
    error: BaseTheme.errorColorDark,
    card: BaseTheme.cardDark

   ); 
}