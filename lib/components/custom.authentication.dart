import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/controller/global.controller.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/router/routes.dart';
import 'package:mp/utils/log.utils.dart';

// ignore: must_be_immutable
class CustomAuthenticationWidget extends StatelessWidget {
  Widget loginWidget;
  Widget notLoginWidget;
  CustomAuthenticationWidget(
      {super.key, required this.loginWidget, required this.notLoginWidget});

  @override
  Widget build(BuildContext context) {
    return Obx(() => GlobalController.to.token.value.isNotEmpty
        ? loginWidget
        : notLoginWidget.onTap(() {
            Get.toNamed(AppRoutes.login);
          }));
  }
}
