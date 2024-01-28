import 'package:get/get.dart';
import 'package:mp/views/wallet/controller/controller.dart';

class WalletBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<WalletController>(() => WalletController());
  }
}