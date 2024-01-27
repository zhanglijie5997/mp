import 'package:get/get.dart';

class BuyController extends GetxController {
  final number = 1.obs;

  add(int value) {
    if (value < 0) {
      if (number.value > 1) {
        number.value--;
      }
    } else {
      number.value++;
    }
  }
}
