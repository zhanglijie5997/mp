import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mp/extension/string.ext.dart';
import 'package:mp/models/product_detail_model/product_detail_model.dart';
import 'package:mp/utils/log.utils.dart';

class BuyController extends GetxController {
  final number = 1.obs;
  final params = Get.parameters;
  final data = (const ProductDetailModel()).obs;
  add(int value) {
    if (value < 0) {
      if (number.value > 1) {
        number.value--;
      }
    } else {
      number.value++;
    }
  }

  @override
  void onReady() {
    final res = (params['data'] as String).decode<Map<String, dynamic>>();
    data.value = ProductDetailModel.fromJson(res);
    super.onReady();
  }
}
