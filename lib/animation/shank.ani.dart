import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
/// 抖动动画
class ShankAnimation extends StatefulWidget {
  final Widget child;
  const ShankAnimation({super.key, required this.child});

  @override
  State<ShankAnimation> createState() => ShankAnimationState();
}

class ShankAnimationState extends State<ShankAnimation>
    with TickerProviderStateMixin {
  late final shakeController =
      AnimationController(vsync: this, duration: 400.milliseconds)..addListener(listener);

  listener() {
    if (shakeController.status == AnimationStatus.completed) {
        shakeController.reset();
      }
  }

  play() {
    shakeController.forward();
  }

  @override
  void dispose() {
    shakeController.removeListener(listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: shakeController,
      builder: (context, child) {
        final sineValue = sin(4 * 2 * pi * shakeController.value);
        return Transform.translate(
          offset: Offset(sineValue * 10, 0),
          child: widget.child,
        );
      },
    );
  }
}
