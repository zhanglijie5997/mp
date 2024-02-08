import 'package:mp/api/api.dart';
import 'package:mp/models/accomoun_model/accomoun_model.dart';
import 'package:mp/models/accomoun_params/accomoun_params.dart';
import 'package:mp/models/accomoun_tab_list_model/accomoun_tab_list_model.dart';
import 'package:mp/models/get_plate_list_model/get_plate_list_model.dart';
import 'package:mp/models/home_banner_model/home_banner_model.dart';
import 'package:mp/models/home_list_model/home_list_model.dart';
import 'package:mp/models/home_position_model/home_position_model.dart';
import 'package:mp/models/product_list_model/product_list_model.dart';
import 'package:mp/models/response.dart';
import 'package:mp/models/user_product_list_model/user_product_list_model.dart';
import 'package:mp/models/wx_user_model/wx_user_model.dart';
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

  /// 寄售市场二级Tab
  static Future<ResponseModel<GetPlateListModel>> nftMarketGetPlateList() {
    return HttpUtil.fetchModel<GetPlateListModel>(FetchType.get,
        url: ApiName.NftMarketGetPlateList);
  }

  /// 寄售市场二级列表
  static Future<ResponseModel<ProductListModel>>
      nftMarketGetConsignmentProductList(
          NftMarketGetConsignmentProductListParams params) {
    return HttpUtil.fetchModel<ProductListModel>(FetchType.post,
        url: ApiName.NftMarketGetConsignmentProductList, body: params.toJson());
  }

  /// 个人信息
  static Future<ResponseModel<WxUserModel>> wxUser() {
    return HttpUtil.fetchModel<WxUserModel>(FetchType.get, url: ApiName.WxUser);
  }

  /// 根据userid 查询用户藏品
  static Future<ResponseModel<UserProductListModel>>
      nftUserProductGetProductList(String userId, [int? type]) {
    return HttpUtil.fetchModel<UserProductListModel>(FetchType.get,
        url: ApiName.NftUserProductGetProductList,
        queryParameters: {"userId": userId, "type": type ?? ""});
  }
}

class NftMarketGetConsignmentProductListParams {
  int? type;
  int? current;
  int? rows;
  String? plateId;
  NftMarketGetConsignmentProductListParams(
      {this.type, this.current, this.rows, this.plateId});

  NftMarketGetConsignmentProductListParams.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    current = json['current'];
    rows = json['rows'];
    plateId = json['platId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['type'] = type;
    data['current'] = current;
    data['rows'] = rows;
    data['plateId'] = plateId;
    return data;
  }
}
