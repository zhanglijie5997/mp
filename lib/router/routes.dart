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
import 'package:mp/views/invite/binds/binds.dart';
import 'package:mp/views/invite/invite.dart';
import 'package:mp/views/login/binds/binds.dart';
import 'package:mp/views/login/login.dart';
import 'package:mp/views/order/binds/binds.dart';
import 'package:mp/views/order/order.dart';
import 'package:mp/views/orderDetail/binds/binds.dart';
import 'package:mp/views/orderDetail/orderDetail.dart';
import 'package:mp/views/realy/binds/binds.dart';
import 'package:mp/views/realy/realy.dart';
import 'package:mp/views/register/binds/binds.dart';
import 'package:mp/views/register/register.dart';
import 'package:mp/views/setting/binds/binds.dart';
import 'package:mp/views/setting/setting.dart';
import 'package:mp/views/wallet/binds/binds.dart';
import 'package:mp/views/wallet/wallet.dart';
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
  static String invite = "/invite";
  static String setting = "/setting";
  static String wallet = "/wallet";
  static String realy = "/realy";

  /// 需要登陆的页面 在GetPage middlewares: [AuthMiddleWare()]
  static var routes = [
    GetPage(
        name: AppRoutes.home,
        page: () => const HomePage(),
        binding: HomeBinding()),
    // middlewares: [AuthMiddleWare()]
    GetPage(
        name: AppRoutes.order,
        page: () => const OrderPage(),
        binding: OrderBinding(),
        // middlewares: [AuthMiddleWare()]
    ),
    GetPage(
        name: AppRoutes.login,
        page: () => const LoginPage(),
        binding: LoginBinding(),
        transition: Transition.downToUp,
        showCupertinoParallax: false),
    GetPage(
        name: AppRoutes.register,
        page: () => const RegisterPage(),
        binding: RegisterBinding(),
        transition: Transition.downToUp,
        showCupertinoParallax: false,
        transitionDuration: 0.milliseconds),
    GetPage(
        name: "${AppRoutes.details}/:id",
        page: () => const DetailPage(),
        binding: DetailsBinding()),
    GetPage(
        name: "${AppRoutes.orderDetail}/:id",
        page: () => const OrderDetailPage(),
        binding: OrderDetailBinding()),
    GetPage(
        name: "${AppRoutes.buy}/:id",
        page: () => const BuyPage(),
        binding: BuyBinding()),
    GetPage(
        name: AppRoutes.integration,
        page: () => const IntegrationPage(),
        binding: IntegrationBinding()),
    GetPage(
        name: AppRoutes.webview,
        page: () => const AppWebviewPage(),
        binding: AppWebviewBinding()),
    GetPage(
        name: AppRoutes.invite,
        page: () => const InvitePage(),
        binding: InviteBinding()),
    GetPage(
        name: AppRoutes.setting,
        page: () => const SettingPage(),
        binding: SettingBinding()),
    GetPage(
        name: AppRoutes.wallet,
        page: () => const WalletPage(),
        binding: WalletBinding()),
    GetPage(
        name: AppRoutes.realy,
        page: () => const RealyPage(),
        binding: RealyBinding()),
  ];
}
