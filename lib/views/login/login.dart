import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/animation/shank.ani.dart';
import 'package:mp/components/custom.checkbox.dart';
import 'package:mp/components/custom.field.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/generated/locales.g.dart';
import 'package:mp/views/login/controller/controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Padding(
      padding: EdgeInsets.only(
          left: 24, right: 24, top: context.mediaQueryPadding.top + 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(Icons.arrow_back, color: context.customTheme?.fontColor,),
              ).onTap(() => Get.back()),
              Text(
                LocaleKeys.login.tr,
                style: context.textTheme.bodyLarge
                    ?.copyWith(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
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
                  onChange: controller.changePassword,
                  helperText: LocaleKeys.passwrodHelp.tr,
                  keyboardType: TextInputType.visiblePassword,
                  status: controller.passwordStatus.value,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(LocaleKeys.forgetPassword.tr)
                    .onTap(controller.handleForgetPassword),
                Text(LocaleKeys.dontHaveAccountTip.tr,
                        style: context.textTheme.bodyMedium
                            ?.copyWith(color: context.customTheme?.gray3))
                    .onTap(controller.handleRegisterPage),
              ],
            ),
          ),

          // 分割线
          Padding(
            padding: const EdgeInsets.only(
              top: 32,  right: 10
            ),
            child: ShankAnimation(
              key: controller.privateKey,
              child: Row(
              
                children: [
                CustomCheckbox(onChange: controller.handlePrivite),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text.rich(
                    TextSpan(
                      text: LocaleKeys.privateText.tr,
                      children: [
                        TextSpan(text: " ${LocaleKeys.private.tr} ", style: context.textTheme.bodyMedium?.copyWith(
                          color: context.customTheme?.active
                        )),
                        TextSpan(text: LocaleKeys.and.tr),
                        TextSpan(text: " ${LocaleKeys.service.tr}", style: context.textTheme.bodyMedium?.copyWith(
                          color: context.customTheme?.active
                        )),
                      ]
                    )
                  ),
                )
              ],
           
            ),
          )),


          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                color: context.customTheme?.fontColor,
                borderRadius: 16.radius,
              ),
              alignment: Alignment.center,
              child: Text(LocaleKeys.login.tr,
                  style: context.textTheme.bodyMedium?.copyWith(
                      color: context.customTheme?.dark2,
                      fontWeight: FontWeight.bold)),
            ).onTap(controller.handleLogin),
          ),
        
          
        ],
      ),
    ));
  }
}
