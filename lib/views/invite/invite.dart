import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/generated/locales.g.dart';
import 'package:mp/views/invite/controller/controller.dart';
import 'package:qr_flutter/qr_flutter.dart';

class InvitePage extends GetView<InviteController> {
  const InvitePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(header: LocaleKeys.inviteFriends.tr),
        body: RepaintBoundary(
          key: controller.repaintBoundaryKey,
          child: Stack(
            children: [

              Column(
                children: [
                  Image.asset(
                    Assets.assetsImagesInviteBg,
                    width: double.infinity,
                  ),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 12, right: 16),
                          height: 44,
                          decoration: BoxDecoration(
                              borderRadius: 12.radius,
                              border: Border.all(
                                width: 1,
                                color: context.customTheme?.fontColor ??
                                    Colors.transparent,
                              )),
                          alignment: Alignment.center,
                          child: Text(LocaleKeys.shareFriends.tr,
                              style: context.textTheme.bodyMedium
                                  ?.copyWith(fontSize: 16)),
                        ).onTap(controller.shareFriends),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 12),
                          height: 44,
                          decoration: BoxDecoration(
                              color: context.customTheme?.fontColor,
                              borderRadius: 12.radius),
                          alignment: Alignment.center,
                          child: Text(LocaleKeys.downloadimg.tr,
                              style: context.textTheme.bodyMedium?.copyWith(
                                  fontSize: 16,
                                  color: context.customTheme?.navbarBg)),
                        ).onTap(controller.saveToLocal),
                      ),
                    ],
                  ))
                ],
              ),
              Positioned(
                  top: 150,
                  left: 0,
                  width: context.mediaQuerySize.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(LocaleKeys.myInvite.tr, style: context.textTheme.bodyMedium?.copyWith(
                        fontSize: 16, color: context.customTheme?.inviteText
                      )),

                      // 邀请码
                      Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 18
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 76
                        ),
                        decoration: BoxDecoration(
                          borderRadius: 24.radius,
                          color: context.customTheme?.inviteCodeBg

                        ),
                        child: Text("123456", style: context.textTheme?.bodyMedium?.copyWith(
                          color: context.customTheme?.inviteCodeText, fontWeight: FontWeight.w500,
                          fontSize: 26
                        )),
                      ),

                      // 邀请码图片
                      Container(
                        width: 165, height: 165,
                        decoration: BoxDecoration(
                          borderRadius: 24.radius,
                          border: Border.all(
                            width: 7.5,
                            color: context.customTheme?.inviteCodeBg ?? Colors.transparent
                          )
                        ),
                        child: ClipRRect(
                          borderRadius: 24.radius,
                          child: QrImageView(
                            data: '1234567890',
                            version: QrVersions.auto,
                            backgroundColor: Colors.white,
                            size: 150,
                          ),
                        ),
                      )
                    ],
                  )
              ),
            ],
          ),
        ));
  }
}
