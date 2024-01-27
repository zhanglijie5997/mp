import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomRefreshHeader extends StatefulWidget {
  final IndicatorController controller;
  const CustomRefreshHeader({super.key, required this.controller});

  @override
  State<CustomRefreshHeader> createState() => _CustomRefreshHeaderState();
}

class _CustomRefreshHeaderState extends State<CustomRefreshHeader>
    with TickerProviderStateMixin {
  late final AnimationController lottieController =
      AnimationController(vsync: this);

  IndicatorController get controller => widget.controller;

  @override
  void dispose() {
    lottieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.scale(
          scale: (controller.value),
          child: SizedBox(
            height: 80 * controller.value,
            child: Lottie.asset("assets/json/loading.json",
                repeat: true,
                width: 200,
                height: 200,
                controller: lottieController, onLoaded: (composition) {
              lottieController
                ..duration = composition.duration
                ..repeat();
            }),
          ),
        );
      },
    );
  }
}
