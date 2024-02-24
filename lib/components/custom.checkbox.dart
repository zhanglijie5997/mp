import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';

class CustomCheckbox extends StatefulWidget {
  final Function(bool)? onChange;
  final bool? isSelect;
  const CustomCheckbox({super.key, this.onChange, this.isSelect});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  late bool status = widget.isSelect ?? false;

  handleStatus() {
    setState(() {
      widget.onChange?.call(!status);
      status = !status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
          borderRadius: 3.radius,
          border: Border.all(
            width: 1,
            color: context.customTheme?.active ?? Colors.transparent,
          )),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: SvgPicture.asset(
          Assets.assetsImagesSvgIconIconCheck1,
          // ignore: deprecated_member_use
          color: status
              ? context.customTheme?.active ?? Colors.transparent
              : Colors.transparent,
          width: 16,
          height: 16,
        ),
      ).onTap(handleStatus),
    );
  }
}
