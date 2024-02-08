import 'package:mp/api/api.dart';
import 'package:mp/models/response.dart';
import 'package:mp/models/user_phone_login_model/user_phone_login_model.dart';
import 'package:mp/utils/http.utils.dart';

class UserPhoneLoginParams {
  String? phone;
  String? code;
  int? typeCode;
  String? captchaId;
  String? neCaptchaValidate;

  UserPhoneLoginParams(
      {this.phone,
      this.code,
      this.typeCode,
      this.captchaId,
      this.neCaptchaValidate});

  UserPhoneLoginParams.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    code = json['code'];
    typeCode = json['typeCode'];
    captchaId = json['captchaId'];
    neCaptchaValidate = json['neCaptchaValidate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['phone'] = phone;
    data['code'] = code;
    data['typeCode'] = typeCode;
    data['captchaId'] = captchaId;
    data['neCaptchaValidate'] = neCaptchaValidate;
    return data;
  }
}

class AppLoginRequest {
  /// 用户登陆
  static Future<ResponseModel<UserPhoneLoginModel>> apiAppLoginPhone(
      UserPhoneLoginParams v) {
    return HttpUtil.fetchModel<UserPhoneLoginModel>(FetchType.post,
        url: ApiName.ApiAppLoginPhone, body: v.toJson());
  }
}
