import 'package:mp/config/config.dart';
import 'package:mp/controller/global.controller.dart';

class LianPayCore {
  static String available = "USEROWN_AVAILABLE"; // 可用
  static String psettle = "USEROWN_PSETTLE";
  static String normore = "NORMAL"; // 正常
  static String cancel = "CANCEL"; // 注销

  /// 余额支付钱包 webview
  static String walletUri([String? type = "outPwd"]) {
    // http://localhost:8080/#/packages/packages-common/webview/lian-pay?type=outPwd
    // https://prodai.hunanjiyun.com/pay-lian?eruda=true&type=outPwd&token=560F2AC1A26BF42895DA4A1361195266I67K&target=h5
    // http://localhost:8080/#/packages/packages-me/wallet/wallet-cashier?orderId=fc8cb17c6cf942f8926a73984a8838f118df2ebb20d&price=1&orderInfo=SINGLE&orderType=&buyType=
    // this.url = `${serverH5Pay}/pay-lian?eruda=${debugH5}&type=${this.type}&token=${this.token}&target=${target}`
    final base = AppConfig.currentBase();
    final token = GlobalController.to.token.value;
    return "${base.serverH5Pay}/pay-lian?eruda=${base.debugH5}&type=$type&token=$token&target=${base.target}";
  }
}
