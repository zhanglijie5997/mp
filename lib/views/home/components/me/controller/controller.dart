import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeMeController extends GetxController {
  final expandedHeight = (300.0).obs;
  final scrollHeight = (0.0).obs;
  final ScrollController scrollController = ScrollController();
  final opacity = (0.0).obs;

  listener() {
    final res = (scrollController.offset / expandedHeight.value);
    // print(scrollController.offset);
    if (scrollController.offset <= 0) {
      scrollHeight.value = -scrollController.offset;
    }
    opacity.value = res >= 1
        ? 1
        : res <= 0
            ? 0
            : res;
  }

  @override
  void onInit() {
    scrollController.addListener(listener);
    super.onInit();
  }

  @override
  void onClose() {
    scrollController.removeListener(listener);
    super.onClose();
  }
}
