import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
import 'package:mp/components/custom.scroll.behavior.dart';
import 'package:mp/constants/base.theme.dart';
import 'package:mp/constants/theme.custom.dart';
import 'package:mp/extension/context.ext.dart';
// import 'package:mp/extension/num.ext.dart';
import 'package:mp/utils/log.utils.dart';
import 'package:mp/utils/storage.utils.dart';

const themeLocal = {
  "light": ThemeMode.light,
  "dark": ThemeMode.dark,
  "system": ThemeMode.system
};
class ThemeServices extends GetxController{
  static ThemeServices get to => Get.find<ThemeServices>();

  ThemeMode mode = ThemeMode.system;
  // 0 -> 夜间 1 -> 日间
  final model = "dark".obs;

  SystemUiOverlayStyle get systemOverlay => model.value == "dark" ? SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light):SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark);

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
    model.value = value;
    LogUtil.w("主题切换 $mode");
    Get.changeThemeMode(current);
    updateStatusBar();

  }

  @override
  void onInit() {
    print("theme services created");
    final currentTheme = StorageUtils().ready<String?>(StorageKeys.theme);
    if (currentTheme != null) {
      mode = themeLocal[currentTheme] ?? ThemeMode.system;
    }
    handleSetTheme("light");
    super.onInit();
  }

  static ThemeData get dark => ThemeData(
    splashColor: Colors.transparent,
    splashFactory: NoSplashFactory(),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: BaseTheme.dark2Dark,
      titleTextStyle: Get.context?.theme.appBarTheme.titleTextStyle?.copyWith(
        color: Get.context!.customTheme?.fontColor
      )
    ),
    focusColor: BaseTheme.activeDark,
    extensions: [CustomTheme.dark],
    cardColor: BaseTheme.cardDark,
    scaffoldBackgroundColor: BaseTheme.dark2Dark,
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: BaseTheme.fontDark),
      bodyLarge: TextStyle(color: BaseTheme.fontDark),
      bodySmall: TextStyle(color: BaseTheme.fontDark),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: BaseTheme.cursorColorDark
    ),
    dividerColor: BaseTheme.borderDark,
    iconTheme: IconThemeData(
        color: BaseTheme.fontDark
    ),
    primaryColor: BaseTheme.activeDark,
    brightness: Brightness.dark,
    tabBarTheme: TabBarTheme(
      dividerColor: Colors.transparent,
      // indicator: BoxDecoration(
      //   borderRadius: 5.radius,
      // ),
      indicatorColor: BaseTheme.activeDark,
      labelColor: BaseTheme.activeDark,
      unselectedLabelColor: BaseTheme.fontDark,
      labelStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold
      ),
      unselectedLabelStyle: const TextStyle(
          fontSize: 16,
      ),
    )
  );

  static ThemeData get light => ThemeData(
    splashFactory: NoSplashFactory(),
    appBarTheme:  AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: BaseTheme.dark2Light,
      titleTextStyle: Get.context?.theme.appBarTheme.titleTextStyle?.copyWith(
        color: Get.context!.customTheme?.fontColor
      )
    ),
    focusColor: BaseTheme.activeLight,
    extensions: [CustomTheme.light],
    cardColor: BaseTheme.cardLight,
    scaffoldBackgroundColor: BaseTheme.dark2Light,
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: BaseTheme.fontLight),
      bodyLarge: TextStyle(color: BaseTheme.fontLight),
      bodySmall: TextStyle(color: BaseTheme.fontLight),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: BaseTheme.cursorColorLight
    ),
    dividerColor: BaseTheme.borderLight,
    iconTheme: IconThemeData(
      color: BaseTheme.fontLight
    ),
    primaryColor: BaseTheme.activeLight,
    brightness: Brightness.light,
    tabBarTheme: TabBarTheme(
      dividerColor: Colors.transparent,
      // indicator: BoxDecoration(
      //     borderRadius: 5.radius,
      // ),
      indicatorColor: BaseTheme.activeLight,
      labelColor: BaseTheme.activeLight,
      unselectedLabelColor: BaseTheme.fontLight,
      labelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 16,
      ),
    )
  );
}



 