import 'package:get/get.dart';
import 'package:mp/src/views/home/binds/binds.dart';
import 'package:mp/src/views/home/home.dart';
import 'package:mp/src/views/login/binds/binds.dart';
import 'package:mp/src/views/login/login.dart';

final class AppRoutes {
  static String home = "/home";
  static String login = "/login";
  /// 需要登陆的页面 在GetPage middlewares: [AuthMiddleWare()]
  static var routes = [
    GetPage(name: AppRoutes.home, page:()=> const HomePage(), binding:HomeBinding(), ),
    GetPage(name: AppRoutes.login, page:()=> const LoginPage(), binding: LoginBinding() ),
  ];
}