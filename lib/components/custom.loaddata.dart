import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mp/components/custom.nodata.dart';
import 'package:mp/utils/log.utils.dart';

class CustomLoadData extends StatefulWidget {
  final int? length;
  final Widget? child;
  final double? top;
  final double? bottom;
  const CustomLoadData(
      {super.key, this.child, this.length, this.top, this.bottom});

  @override
  State<CustomLoadData> createState() => _CustomLoadDataState();
}

class _CustomLoadDataState extends State<CustomLoadData>
    with TickerProviderStateMixin {
  late final AnimationController lottieController =
      AnimationController(vsync: this);
  bool isFirst = true;

  @override
  void initState() {
    if (widget.length != null) {
      setState(() {
        isFirst = false;
      });
    }
    super.initState();
  }

  @override
  void didUpdateWidget(CustomLoadData oldWidget) {
    if (widget.length != null) {
      setState(() {
        isFirst = false;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    lottieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 首次加载
    return isFirst
        ? Lottie.asset("assets/json/loading.json",
            repeat: true,
            width: 200,
            height: 200,
            controller: lottieController, onLoaded: (composition) {
            lottieController
              ..duration = composition.duration
              ..repeat();
          })
        : widget.length == 0
            ? SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        bottom: widget.bottom ?? 0, top: widget.top ?? 0),
                    child: const CustomNoData()),
              )
            : widget.child ?? const SizedBox();
  }
}
