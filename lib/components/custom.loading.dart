import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLoading extends StatefulWidget {
  final String? msg;
  const CustomLoading({super.key, this.msg});

  @override
  State<CustomLoading> createState() => _CustomLoadingState();
}

class _CustomLoadingState extends State<CustomLoading> with TickerProviderStateMixin{
  late final AnimationController controller = AnimationController(vsync: this);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            "assets/json/loading.json", 
            repeat: true,
            width: 200,
            height: 200,
            controller: controller,
            onLoaded: (composition) {
              controller
                  ..duration = composition.duration
                  ..repeat();
            }
          ),
        ],
      ),
    );
  }
}