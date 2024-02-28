import 'package:get/get.dart';
import 'package:mp/api/product/product.dart';
import 'package:mp/models/api_lian_pay_query_acc_info_model/api_lian_pay_query_acc_info_model.dart';
import 'package:mp/models/api_lian_pay_query_bank_info_model/api_lian_pay_query_bank_info_model.dart';
import 'package:mp/models/nft_order_detail_model/nft_order_detail_model.dart';

class PayController extends GetxController {
  final params = Get.parameters;
  // 订单信息
  final orderDetail = (const NftOrderDetailModel()).obs;
  // 账号信息
  final accointInfo = (const ApiLianPayQueryAccInfoModel()).obs;
  // 绑定银行卡信息
  final bankInfo = (const ApiLianPayQueryBankInfoModel()).obs;
  getData() async {
    final res = await ProductRequest.nftOrderOrderDetai(params["id"] ?? "");
    orderDetail.value = res.data!;
  }

  getWallet() async{
    final info = await ProductRequest.apiLianPayQueryAccInfo();
    accointInfo.value = info.data!;
  }

  getBankData() async{
    final res = await ProductRequest.apiLianPayQueryBankCardInfo();
    bankInfo.value = res.data!;
  }

  @override
  void onReady() {
    getData();
    getWallet();
    getBankData();
    super.onReady();
  }
}
