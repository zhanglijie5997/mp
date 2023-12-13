import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.field.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/generated/locales.g.dart';
import 'package:mp/views/register/controller/controller.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(
          left: 24, right: 24, top: context.mediaQueryPadding.top + 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.register.tr,
            style: context.textTheme.bodyLarge
                ?.copyWith(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Obx(() => CustomFiled(
                  labelText: LocaleKeys.email.tr,
                  onChange: controller.changeCount,
                  keyboardType: TextInputType.emailAddress,
                  status: controller.accountStatus.value,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Obx(() => CustomFiled(
                  labelText: LocaleKeys.password.tr,
                  onChange: controller.changeCount,
                  helperText: LocaleKeys.passwrodHelp.tr,
                  keyboardType: TextInputType.visiblePassword,
                  status: controller.passwordStatus.value,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Text(LocaleKeys.forgetPassword.tr).onTap(controller.handleForgetPassword),
                Text(LocaleKeys.haveAccountTip.tr,
                        style: context.textTheme.bodyMedium
                            ?.copyWith(color: context.customTheme?.gray3))
                    .onTap(controller.handleLoginPage),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                color: context.customTheme?.fontColor,
                borderRadius: 16.radius,
              ),
              alignment: Alignment.center,
              child: Text(LocaleKeys.register.tr,
                  style: context.textTheme.bodyMedium?.copyWith(
                      color: context.customTheme?.dark2,
                      fontWeight: FontWeight.bold)),
            ).onTap(controller.handleRegister),
          )
        ],
      ),
    ));
  }
}
