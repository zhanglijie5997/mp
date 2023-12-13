import 'package:get/get.dart';
import 'package:mp/middleware/auth.middleware.dart';
import 'package:mp/views/home/binds/binds.dart';
import 'package:mp/views/home/home.dart';
import 'package:mp/views/login/binds/binds.dart';
import 'package:mp/views/login/login.dart';
import 'package:mp/views/register/binds/binds.dart';
import 'package:mp/views/register/register.dart';

final class AppRoutes {
  static String home = "/home";
  static String login = "/login";
  static String register = "/register";
  /// 需要登陆的页面 在GetPage middlewares: [AuthMiddleWare()]
  static var routes = [
    GetPage(name: AppRoutes.home, page:()=> const HomePage(), binding:HomeBinding(), middlewares: [AuthMiddleWare()]),
    GetPage(name: AppRoutes.login, page:()=> const LoginPage(), binding: LoginBinding(), transition: Transition.noTransition ),
    GetPage(name: AppRoutes.register, page:()=> const RegisterPage(), binding: RegisterBinding(), transition: Transition.noTransition ),
  ];
}