import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/widget.ext.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? actions;
  const CustomAppBar({super.key, this.actions, this.leading, this.title});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size(double.infinity, 44);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.customTheme?.dark2 ?? Colors.transparent,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                constraints: const BoxConstraints(
                  minWidth: 50,
                ),
                child: widget.leading ??
                    SvgPicture.asset(
                      Assets.assetsImagesSvgIconHeaderBack,
                      width: 24,
                      height: 24,
                      color: context.customTheme?.fontColor,
                    ).onTap(() {
                      Get.back();
                    })),
            Expanded(
                child: Container(
                    alignment: Alignment.center,
                    child: widget.title ?? Text("头"))),
            Container(
              constraints: const BoxConstraints(
                minWidth: 0,
                minHeight: 0,
                maxWidth: 44,
                maxHeight: 50
              ),
              child: widget.actions,
            )
          ],
        ),
      ),
    );
  }
}
