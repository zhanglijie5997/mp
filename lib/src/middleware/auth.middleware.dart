
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/src/controller/global.controller.dart';
import 'package:mp/src/router/routes.dart';

class AuthMiddleWare  extends GetMiddleware{
  @override
  RouteSettings? redirect(String? route) {
    Get.log(route!);
    if (GlobalController.to.token.isEmpty) {
      return RouteSettings(name: AppRoutes.login);
    }
    return null;
  }
}