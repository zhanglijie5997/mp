import 'package:mp/api/api.dart';
import 'package:mp/models/accomoun_model/accomoun_model.dart';
import 'package:mp/models/accomoun_params/accomoun_params.dart';
import 'package:mp/models/accomoun_tab_list_model/accomoun_tab_list_model.dart';
import 'package:mp/models/home_banner_model/home_banner_model.dart';
import 'package:mp/models/home_list_model/home_list_model.dart';
import 'package:mp/models/home_position_model/home_position_model.dart';
import 'package:mp/models/response.dart';
import 'package:mp/utils/http.utils.dart';

class HomeRequest {
  /// 发送验证码
  static Future<ResponseModel<HomeListModel>> smsSendSmsCode(dynamic v) {
    return HttpUtil.fetchModel<HomeListModel>(FetchType.post,
        url: ApiName.HomeList, body: v.toJson());
  }

  /// 公告列表
  static Future<ResponseModel<AccomounModel>> apiAnnouncementList(
      AccomounParams v) {
    return HttpUtil.fetchModel<AccomounModel>(FetchType.get,
        url: ApiName.ApiAnnouncementList, queryParameters: v.toJson());
  }

  /// banner列表
  static Future<ResponseModel<HomeBannerModel>>
      apiRotationChartSelectRotationChartList() {
    return HttpUtil.fetchModel<HomeBannerModel>(FetchType.get,
        url: ApiName.ApiRotationChartSelectRotationChartList);
  }

  /// 金刚区列表
  static Future<ResponseModel<HomePositionModel>>
      apiHomePositionSelectNftHomePositionList() {
    return HttpUtil.fetchModel<HomePositionModel>(FetchType.get,
        url: ApiName.ApiHomePositionSelectNftHomePositionList);
  }

  /// 公告tab列表
  static Future<ResponseModel<AccomounTabListModel>>
  apiAnnouncementTypeSelectAnnouncementTypeList() {
    return HttpUtil.fetchModel<AccomounTabListModel>(FetchType.get,
        url: ApiName.ApiAnnouncementTypeSelectAnnouncementTypeList);
  }
}
