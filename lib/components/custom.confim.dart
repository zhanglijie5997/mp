import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/string.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/utils/toast.utils.dart';

class CustomConfirm extends StatefulWidget {
  final CustomConfirmParams? params;
  const CustomConfirm({super.key, this.params});

  @override
  State<CustomConfirm> createState() => _CustomConfirmState();
}

class _CustomConfirmState extends State<CustomConfirm> {
  late final params = widget.params;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: UnconstrainedBox(
        child: Container(
          width: 294,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
          decoration: BoxDecoration(
              color: context.customTheme?.navbarBg, borderRadius: 12.radius),
          child: Column(
            children: [
              Text(
                params?.title ?? "提示",
                style: context.textTheme.bodyMedium
                    ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(params?.content ?? "确定此次操作？"),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 6),
                      padding: const EdgeInsets.symmetric(vertical: 9),
                      decoration: BoxDecoration(
                          borderRadius: 12.radius, color: "#f1f1f1".color()),
                      alignment: Alignment.center,
                      child: Text(
                        params?.cancelText ?? "取消",
                        style: context.textTheme.bodyMedium?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: context.customTheme?.gray3,
                        ),
                      ),
                    ).onTap(() {
                      ToastUtils.close();
                      params?.cancel?.call();
                    }),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 6),
                      padding: const EdgeInsets.symmetric(vertical: 9),
                      decoration: BoxDecoration(
                        borderRadius: 12.radius,
                        color: context.textTheme.bodyMedium?.color,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        params?.submitText ?? "确定",
                        style: context.textTheme.bodyMedium?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: context.customTheme?.navbarBg,
                        ),
                      ),
                    ).onTap(() {
                      params?.submit?.call();
                    }),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
