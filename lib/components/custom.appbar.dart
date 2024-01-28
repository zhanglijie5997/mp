import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/widget.ext.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? actions;
  final String? header;
  final Color? background;
  const CustomAppBar(
      {super.key,
      this.actions,
      this.leading,
      this.title,
      this.header,
      this.background});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size(double.infinity, 44);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color:
          widget.background ?? context.customTheme?.dark2 ?? Colors.transparent,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                constraints: const BoxConstraints(
                  minWidth: 50,
                ),
                child: widget.leading ??
                    const Icon(Icons.arrow_back_rounded).onTap(() {
                      Get.back();
                    })),
            Expanded(
                child: Container(
                    alignment: Alignment.center,
                    child: widget.title ??
                        Text(
                          widget.header ?? "",
                          style: context.textTheme.bodyMedium?.copyWith(
                              fontSize: 18, overflow: TextOverflow.ellipsis),
                        ))),
            Container(
              constraints: const BoxConstraints(
                  minWidth: 0, minHeight: 0, maxWidth: 44, maxHeight: 50),
              child: widget.actions,
            )
          ],
        ),
      ),
    );
  }
}
