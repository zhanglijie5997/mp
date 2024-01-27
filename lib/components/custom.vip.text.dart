import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class CustomVipText extends StatelessWidget {
  final String? name;
  final List<Color>? colors;
  const CustomVipText({super.key, this.name, this.colors});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(1),
        topRight: Radius.circular(1),
        bottomLeft: Radius.circular(1),
        bottomRight: Radius.circular(8),
      ),
      child: Shimmer(
        color: context.customTheme?.gray3 ?? Colors.white,
        colorOpacity: .2,
        child: Text(name ?? "",
            style: context.textTheme.bodyMedium?.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              foreground: Paint()
                ..shader = LinearGradient(
                        colors: colors ??
                            [
                              Colors.red,
                              Colors.yellow,
                            ])
                    .createShader(const Rect.fromLTWH(0, 0, 150, 0)),
            )),
      ),
    );
  }
}
