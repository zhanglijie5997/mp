import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/views/setting/controller/controller.dart';

class SettingPage extends GetView<SettingController> {
  const SettingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(header: "设置"),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                color: context.customTheme?.navbarBg,
                borderRadius: 16.radius,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(236, 236, 241, 0.6),
                    offset: Offset(0, 5),
                    blurRadius: 25,
                  ),
                ],
              ),
              child: Column(
                children: controller.list
                    .map((e) => Container(

                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5,
                                      color: (context.customTheme?.gray3 ??
                                              Colors.transparent)
                                          .withOpacity(.2)))),
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // 左边
                              Text(e.name ?? "",
                                  style: context.textTheme.bodyMedium?.copyWith(
                                      fontSize: 14,
                                      color: context.customTheme?.gray3)),
                              // 右边
                              Row(
                                children: [
                                  e.img != null
                                      ? ClipRRect(
                                          borderRadius: 32.radius,
                                          child: CustomImage(
                                            url: e.img!,
                                            size: Size(32, 32),
                                          ))
                                      : Text(e.value ?? "", style: context.textTheme.bodyMedium?.copyWith(
                                    fontSize: 14
                                  )),
                                  Visibility(
                                      visible: e.svgPath != null,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 3.0),
                                        child: SvgPicture.asset(
                                          e.svgPath!,
                                          width: 13,
                                          height: 13,
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ).onTap(() => controller.handleClick(e)))
                    .toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              decoration: BoxDecoration(
                color: context.customTheme?.navbarBg,
                borderRadius: 16.radius,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(236, 236, 241, 0.6),
                    offset: Offset(0, 5),
                    blurRadius: 25,
                  ),
                ],
              ),
              child: Column(
                children: controller.list2
                    .map((e) => Container(
                          height: 46,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5,
                                      color: (context.customTheme?.gray3 ??
                                              Colors.transparent)
                                          .withOpacity(.2)))),
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                  child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // 左边
                              Text(e.name ?? "",
                                  style: context.textTheme.bodyMedium?.copyWith(
                                      fontSize: 14,
                                      color: context.customTheme?.gray3)),
                              // 右边
                              Row(
                                children: [
                                  e.img != null
                                      ? ClipRRect(
                                          borderRadius: 32.radius,
                                          child: CustomImage(
                                            url: e.img!,
                                            size: Size(32, 32),
                                          ))
                                      : Text(e.value ?? ""),
                                  Visibility(
                                      visible: e.svgPath != null,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 3.0),
                                        child: SvgPicture.asset(
                                          e.svgPath!,
                                          width: 10,
                                          height: 10,
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ).onTap(() => controller.handleClick(e)))
                    .toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: context.customTheme?.navbarBg,
                borderRadius: 16.radius,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(236, 236, 241, 0.6),
                    offset: Offset(0, 5),
                    blurRadius: 25,
                  ),
                ],
              ),
              child: Column(
                children: controller.list3
                    .map((e) => Container(
                          height: 46,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5,
                                      color: (context.customTheme?.gray3 ??
                                              Colors.transparent)
                                          .withOpacity(.2)))),
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),

                  child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // 左边
                              Text(e.name ?? "",
                                  style: context.textTheme.bodyMedium?.copyWith(
                                      fontSize: 14,
                                      color: context.customTheme?.gray3)),
                              // 右边
                              Row(
                                children: [
                                  e.img != null
                                      ? ClipRRect(
                                          borderRadius: 32.radius,
                                          child: CustomImage(
                                            url: e.img!,
                                            size: Size(32, 32),
                                          ))
                                      : Text(e.value ?? ""),
                                  Visibility(
                                      visible: e.svgPath != null,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 3.0),
                                        child: SvgPicture.asset(
                                          e.svgPath!,
                                          width: 10,
                                          height: 10,
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ).onTap(() => controller.handleClick(e)))
                    .toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              decoration: BoxDecoration(
                color: context.customTheme?.navbarBg,
                borderRadius: 16.radius,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(236, 236, 241, 0.6),
                    offset: Offset(0, 5),
                    blurRadius: 25,
                  ),
                ],
              ),
              child: Column(
                children: controller.list4
                    .map((e) => Container(
                          height: 46,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5,
                                      color: (context.customTheme?.gray3 ??
                                              Colors.transparent)
                                          .withOpacity(.2)))),
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),

                  child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // 左边
                              Text(e.name ?? "",
                                  style: context.textTheme.bodyMedium?.copyWith(
                                      fontSize: 14,
                                      color: context.customTheme?.gray3)),
                              // 右边
                              Row(
                                children: [
                                  e.img != null
                                      ? ClipRRect(
                                          borderRadius: 32.radius,
                                          child: CustomImage(
                                            url: e.img!,
                                            size: const Size(32, 32),
                                          ))
                                      : Text(e.value ?? ""),
                                  Visibility(
                                      visible: e.svgPath != null,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 3.0),
                                        child: SvgPicture.asset(
                                          e.svgPath!,
                                          width: 10,
                                          height: 10,
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ).onTap(() => controller.handleClick(e)))
                    .toList(),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: context.customTheme?.navbarBg,
                borderRadius: 16.radius,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(236, 236, 241, 0.6),
                    offset: Offset(0, 5),
                    blurRadius: 25,
                  ),
                ],
              ),
              child: Column(
                children: controller.list5
                    .map((e) => Container(
                          height: 46,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5,
                                      color: (context.customTheme?.gray3 ??
                                              Colors.transparent)
                                          .withOpacity(.2)))),
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // 左边
                              Text(e.name ?? "",
                                  style: context.textTheme.bodyMedium?.copyWith(
                                      fontSize: 14,
                                      color: context.customTheme?.gray3)),
                              // 右边
                              Row(
                                children: [
                                  e.img != null
                                      ? ClipRRect(
                                          borderRadius: 32.radius,
                                          child: CustomImage(
                                            url: e.img!,
                                            size: Size(32, 32),
                                          ))
                                      : Text(e.value ?? ""),
                                  Visibility(
                                      visible: e.svgPath != null,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 3.0),
                                        child: SvgPicture.asset(
                                          e.svgPath!,
                                          width: 10,
                                          height: 10,
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ).onTap(() => controller.handleClick(e)))
                    .toList(),
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
              padding: const EdgeInsets.symmetric(
                vertical: 14,
              ),
              decoration: BoxDecoration(
                color: context.customTheme?.active,
                borderRadius: 12.radius,
              ),
              child: Text("退出登陆",
                  style: context.textTheme.bodyMedium?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: context.customTheme?.navbarBg)),
            )
          ],
        )));
  }
}
