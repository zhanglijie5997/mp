import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/generated/locales.g.dart';

class CustomNoData extends StatelessWidget {
  final String? text;
  const CustomNoData({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.assetsImagesSvgIconNodata,
          width: 90,
          height: 90,
        ),
        Text(text ?? LocaleKeys.noData.tr)
      ],
    );
  }
}
