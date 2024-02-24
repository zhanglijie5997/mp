import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/controller/global.controller.dart';
import 'package:mp/router/routes.dart';

class RealMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    Get.log(route!);
    if (!GlobalController.to.isAuth.value) {
      return RouteSettings(name: AppRoutes.real);
    }
    return null;
  }
}
