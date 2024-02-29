import 'package:get/get.dart';
import 'package:mp/api/product/product.dart';
import 'package:mp/core/pay.core.dart';
import 'package:mp/extension/string.ext.dart';
import 'package:mp/models/api_lian_pay_query_acc_info_model/api_lian_pay_query_acc_info_model.dart';
import 'package:mp/models/api_lian_pay_query_bank_info_model/api_lian_pay_query_bank_info_model.dart';
import 'package:mp/models/nft_order_detail_model/nft_order_detail_model.dart';
import 'package:mp/router/routes.dart';
import 'package:mp/utils/log.utils.dart';

class PayController extends GetxController {
  final params = Get.parameters;
  // 订单信息
  final orderDetail = (const NftOrderDetailModel()).obs;
  // 账号信息
  final accointInfo = (const ApiLianPayQueryAccInfoModel()).obs;
  // 绑定银行卡信息
  final bankInfo = (const ApiLianPayQueryBankInfoModel()).obs;
  // 选择的支付方式
  final select = (-1).obs;
  final walletAmount = (0.0).obs;
  getData() async {
    final res = await ProductRequest.nftOrderOrderDetai(params["id"] ?? "");
    orderDetail.value = res.data!;
  }

  getWallet() async {
    final info = await ProductRequest.apiLianPayQueryAccInfo();
    accointInfo.value = info.data!;
    final item = info.data?.data?.firstWhere((element) =>
        element.acctType == LianPayCore.available &&
        element.acctState == LianPayCore.normore);
    final item2 = info.data?.data?.firstWhere((element) =>
        element.acctType == LianPayCore.psettle &&
        element.acctState == LianPayCore.normore);
    walletAmount.value = double.parse(item?.amtBalaval ?? "0.0") +
        double.parse(item2?.amtBalaval ?? "0.0");
  }

  getBankData() async {
    final res = await ProductRequest.apiLianPayQueryBankCardInfo();
    bankInfo.value = res.data!;
  }

  handlePay() {
    switch (select.value) {
      case -1:
        // 余额支付
        final url = LianPayCore.walletUri();
        LogUtil.w("支付路径：$url");
        Get.toNamed(AppRoutes.webview, parameters: {"url": url.encode()});
        break;
      case 0:
        // 银行卡支付
        break;
      default:
    }
  }

  @override
  void onReady() {
    getData();
    getWallet();
    getBankData();
    super.onReady();
  }
}
