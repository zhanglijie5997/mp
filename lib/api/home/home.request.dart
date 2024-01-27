import 'package:mp/api/api.dart';
import 'package:mp/models/response.dart';
import 'package:mp/utils/http.utils.dart';

class HomeRequest {
  /// 发送验证码
  static Future<ResponseModel<dynamic>> smsSendSmsCode(dynamic v) {
    return HttpUtil.fetchModel<dynamic>(FetchType.post,
        url: ApiName.HomeList, body: v.toJson());
  }
}
