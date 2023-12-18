import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/core/reg.core.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/generated/locales.g.dart';

class CustomFiled extends StatefulWidget {
  final String? labelText;
  final Function(String)? onChange;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? helperText;
  final bool? status;
  const CustomFiled({super.key, 
    this.labelText, this.onChange, 
    this.keyboardType, this.inputFormatters,
    this.helperText, this.status
  });

  @override
  State<CustomFiled> createState() => _CustomFiledState();
}

class _CustomFiledState extends State<CustomFiled> {

  // 错误显示
  late bool status = false;
  // 密码状态显示
  bool passwordStatus = true;
  late final TextEditingController controller = TextEditingController()..addListener(() {
    final text = controller.text;
    if (text.isNotEmpty) {
      setState(() {
        switch (widget.keyboardType) {
          case TextInputType.emailAddress:
            status = !RegCore.emailReg.hasMatch(text);
            break;
          case TextInputType.visiblePassword:
            status = !RegCore.passwrodReg.hasMatch(text);
            break;
          default:
        }
      });
    }else {
      setState(() {
        status=false;
      });
    }

    
    widget.onChange?.call(controller.text);
  });

  changePasswordStatus() {
    setState(() {
      passwordStatus = !passwordStatus;
    });
  }

  @override
  void didUpdateWidget(CustomFiled oldWidget) {
    setState(() {
      if (widget.status != status) {
        status = widget.status ?? false;
      }
    });
    
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.keyboardType,
      obscureText: widget.keyboardType == TextInputType.visiblePassword && passwordStatus,
      decoration: InputDecoration(
        labelText: widget.labelText ?? "",
        labelStyle: context.textTheme.bodyMedium?.copyWith(
          color: context.customTheme?.gray3
        ),
        suffixIconConstraints: const BoxConstraints(
          maxWidth: 36,
          maxHeight: 16
        ),
        suffixIcon: widget.keyboardType == TextInputType.visiblePassword ? Padding(
          padding:const EdgeInsets.only(right: 10),
          child: SvgPicture.asset(
            passwordStatus ? Assets.assetsImagesSvgIconIconEyeClosed : Assets.assetsImagesSvgIconIconEye,
            color: context.customTheme?.fontColor,
            width: 16, height: 16,
          ),
        ).onTap(changePasswordStatus):null,
        helperText: status? (widget.helperText ?? "${LocaleKeys.pleaseEnterSure.tr}${widget.labelText}"): "",
        helperStyle: context.textTheme.bodyMedium?.copyWith(
          color: context.customTheme?.error
        ),
        
        hintText:  "${LocaleKeys.pleaseEnter.tr}${widget.labelText}",
        hintStyle: context.textTheme.bodyMedium?.copyWith(
          color: context.customTheme?.gray3
        ),

        border: OutlineInputBorder(
          ///设置边框四个角的弧度
          borderRadius: 16.radius,

          ///用来配置边框的样式
          borderSide:const BorderSide(
            ///设置边框的颜色
            ///设置边框的粗细
            width: 2.0,
          ),
        ),
        //设置输入框可编辑时的边框样式
        enabledBorder: OutlineInputBorder(
          ///设置边框四个角的弧度
          borderRadius: 16.radius,

          ///用来配置边框的样式
          borderSide: BorderSide(
            ///设置边框的颜色
            color: context.customTheme?.fontColor ?? Colors.transparent,

            ///设置边框的粗细
            width: 2.0,
          ),
        ),

        ///用来配置输入框获取焦点时的颜色
        focusedBorder: OutlineInputBorder(
          ///设置边框四个角的弧度
          borderRadius: 16.radius,

          ///用来配置边框的样式
          borderSide: BorderSide(
            ///设置边框的颜色
            color: context.customTheme?.fontColor ?? Colors.transparent,
            ///设置边框的粗细
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
