import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLoading extends StatefulWidget {
  final String? msg;
  final Size? size;
  const CustomLoading({super.key, this.msg, this.size});

  @override
  State<CustomLoading> createState() => _CustomLoadingState();
}

class _CustomLoadingState extends State<CustomLoading>
    with TickerProviderStateMixin {
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
          Lottie.asset("assets/json/loading.json",
              repeat: true,
              width: widget.size?.width ?? 200,
              height: widget.size?.height ?? 200,
              controller: controller, onLoaded: (composition) {
            controller
              ..duration = composition.duration
              ..repeat();
          }),
        ],
      ),
    );
  }
}
