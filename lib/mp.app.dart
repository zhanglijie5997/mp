import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:mp/router/router.observer.dart';
import 'package:mp/router/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mp/services/theme/theme.services.dart';

class MpApp extends StatefulWidget {
  const MpApp({super.key});
  @override
  State<MpApp> createState() => _MpAppState();
}

RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class _MpAppState extends State<MpApp> {
  Widget _buildAnnotatedRegion(BuildContext context, Widget child) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Get.isDarkMode
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      child: child,
    );
  }

  Widget _buildBottomPaddingVerticalShield(BuildContext context) {
    return PositionedDirectional(
      start: 0,
      end: 0,
      bottom: 0,
      height: MediaQuery.of(context).padding.bottom,
      child: GestureDetector(
        onTap: () {},
        behavior: HitTestBehavior.translucent,
        onVerticalDragStart: (_) {},
      ),
    );
  }

  MediaQuery _buildFontSize(BuildContext context, Widget child) {
    return MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.routes,
      initialRoute: AppRoutes.home,
      fallbackLocale: const Locale('en', 'US'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      navigatorObservers: [
        GetXRouterObserver(),
        routeObserver,
        FlutterSmartDialog.observer
      ],
      themeMode: ThemeMode.dark,
      theme: ThemeServices.to.light,
      darkTheme: ThemeServices.to.dark,
      builder: FlutterSmartDialog.init(builder: (context, child) {
        _buildAnnotatedRegion(context, child!);
        _buildBottomPaddingVerticalShield(context);
        return _buildFontSize(context, child);
      }),
    );
  }
}
