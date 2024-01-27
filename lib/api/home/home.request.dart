import 'package:mp/api/api.dart';
import 'package:mp/models/home_list_model/home_list_model.dart';
import 'package:mp/models/response.dart';
import 'package:mp/utils/http.utils.dart';

class HomeRequest {
  /// 发送验证码
  static Future<ResponseModel<HomeListModel>> smsSendSmsCode(dynamic v) {
    return HttpUtil.fetchModel<HomeListModel>(FetchType.post,
        url: ApiName.HomeList, body: v.toJson());
  }
}
