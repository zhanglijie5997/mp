import 'package:get/get.dart';
import 'package:mp/middleware/auth.middleware.dart';
import 'package:mp/views/buy/binds/binds.dart';
import 'package:mp/views/buy/buy.dart';
import 'package:mp/views/details/binds/binds.dart';
import 'package:mp/views/details/details.dart';
import 'package:mp/views/home/binds/binds.dart';
import 'package:mp/views/home/home.dart';
import 'package:mp/views/integration/binds/binds.dart';
import 'package:mp/views/integration/integration.dart';
import 'package:mp/views/login/binds/binds.dart';
import 'package:mp/views/login/login.dart';
import 'package:mp/views/order/binds/binds.dart';
import 'package:mp/views/order/order.dart';
import 'package:mp/views/orderDetail/binds/binds.dart';
import 'package:mp/views/orderDetail/orderDetail.dart';
import 'package:mp/views/register/binds/binds.dart';
import 'package:mp/views/register/register.dart';
import 'package:mp/views/webview/binds/binds.dart';
import 'package:mp/views/webview/webview.dart';

final class AppRoutes {
  static String home = "/home";
  static String login = "/login";
  static String register = "/register";
  static String order = "/order";
  static String details = "/details";
  static String orderDetail = "/orderDetail";
  static String buy = "/buy";
  static String integration = "/integration";
  static String webview = "/webview";
  /// 需要登陆的页面 在GetPage middlewares: [AuthMiddleWare()]
  static var routes = [
    GetPage(name: AppRoutes.home, page:()=> const HomePage(), binding:HomeBinding()),
    // middlewares: [AuthMiddleWare()]
    GetPage(name: AppRoutes.order, page:()=> const OrderPage(), binding:OrderBinding(),  middlewares: [AuthMiddleWare()]),
    GetPage(name: AppRoutes.login, page:()=> const LoginPage(), binding: LoginBinding(), transition: Transition.downToUp, showCupertinoParallax:false, transitionDuration: 0.milliseconds ),
    GetPage(name: AppRoutes.register, page:()=> const RegisterPage(), binding: RegisterBinding(), transition: Transition.downToUp , showCupertinoParallax:false, transitionDuration: 0.milliseconds),
    GetPage(name: "${AppRoutes.details}/:id", page:()=> const DetailPage(), binding: DetailsBinding() ),
    GetPage(name: "${AppRoutes.orderDetail}/:id", page:()=> const OrderDetailPage(), binding: OrderDetailBinding()),
    GetPage(name: "${AppRoutes.buy}/:id", page:()=> const BuyPage(), binding: BuyBinding()),
    GetPage(name: AppRoutes.integration, page:()=> const IntegrationPage(), binding: IntegrationBinding()),
    GetPage(name: AppRoutes.webview, page:()=> const AppWebviewPage(), binding: AppWebviewBinding()),
  ];
}