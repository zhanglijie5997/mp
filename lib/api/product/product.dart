import 'package:mp/api/api.dart';
import 'package:mp/models/api_lian_pay_get_random_model/api_lian_pay_get_random_model.dart';
import 'package:mp/models/api_lian_pay_query_acc_info_model/api_lian_pay_query_acc_info_model.dart';
import 'package:mp/models/api_lian_pay_query_bank_info_model/api_lian_pay_query_bank_info_model.dart';
import 'package:mp/models/consignment_list_model/consignment_list_model.dart';
import 'package:mp/models/nft_create_buy_order_model/nft_create_buy_order_model.dart';
import 'package:mp/models/nft_order_detail_model/nft_order_detail_model.dart';
import 'package:mp/models/nft_order_get_order_list_model/nft_order_get_order_list_model.dart';
import 'package:mp/models/nft_user_product_get_product_mint_list_new_model/nft_user_product_get_product_mint_list_new_model.dart';
import 'package:mp/models/product_detail_model/product_detail_model.dart';
import 'package:mp/models/response.dart';
import 'package:mp/utils/http.utils.dart';

class ProductRequest {
  /// 获取藏品详情
  static Future<ResponseModel<ProductDetailModel>>
      nftMarketGetProductMintDetails(String v) {
    return HttpUtil.fetchModel<ProductDetailModel>(FetchType.get,
        url: ApiName.NftMarketGetProductMintDetails,
        queryParameters: {"productMintId": v});
  }

  /// 寄售市场列表
  static Future<ResponseModel<ConsignmentListModel>>
      nftMarketGetConsignmentList(NftMarketGetConsignmentProductListParams v) {
    return HttpUtil.fetchModel<ConsignmentListModel>(FetchType.get,
        url: ApiName.NftMarketGetConsignmentList, queryParameters: v.toJson());
  }

  /// 创建订单
  static Future<ResponseModel<NftCreateBuyOrderModel>> nftOrderCreateBuyOrder(
      NftOrderCreateBuyOrderParams v) {
    return HttpUtil.fetchModel<NftCreateBuyOrderModel>(FetchType.post,
        url: ApiName.NftOrderCreateBuyOrder, body: v.toJson());
  }

  /// 查询订单
  static Future<ResponseModel<NftOrderGetOrderListModel>> nftOrderGetOrderList(
      NftOrderGetOrderListParams v) {
    return HttpUtil.fetchModel<NftOrderGetOrderListModel>(FetchType.get,
        url: ApiName.NftOrderGetOrderList, queryParameters: v.toJson());
  }

  // 获取订单详情
  static Future<ResponseModel<NftOrderDetailModel>> nftOrderOrderDetai(
      String id) {
    return HttpUtil.fetchModel<NftOrderDetailModel>(FetchType.get,
        url: "${ApiName.NftOrderOrderDetail}/$id");
  }

  // 获取银行卡信息
  static Future<ResponseModel<ApiLianPayQueryBankInfoModel>>
      apiLianPayQueryBankCardInfo() {
    return HttpUtil.fetchModel<ApiLianPayQueryBankInfoModel>(FetchType.post,
        url: ApiName.ApiLianPayQueryBankCardInfo);
  }

  // 获取钱包信息
  static Future<ResponseModel<ApiLianPayQueryAccInfoModel>>
      apiLianPayQueryAccInfo() {
    return HttpUtil.fetchModel<ApiLianPayQueryAccInfoModel>(FetchType.post,
        url: ApiName.ApiLianPayQueryAccInfo);
  }

  // 获取钱包信息
  static Future<ResponseModel<ApiLianPayGetRandomModel>> apiLianPayGetRandom() {
    return HttpUtil.fetchModel<ApiLianPayGetRandomModel>(FetchType.get,
        url: ApiName.ApiLianPayGetRandom);
  }

  // 获取用户的所有藏品 mintId
  static Future<ResponseModel<NftUserProductGetProductMintListNewModel>> nftUserProductGetProductMintListNew(
    NftUserProductGetProductMintListNewParams params
  ) {
    return HttpUtil.fetchModel<NftUserProductGetProductMintListNewModel>(
        FetchType.get,
        url: ApiName.NftUserProductGetProductMintListNew,
        queryParameters: params.toJson()
    );
  }
}

class NftUserProductGetProductMintListNewParams {
  int? current;
  int? rows;
  String? productId;
  String? userId;

  NftUserProductGetProductMintListNewParams(
      {this.current, this.rows, this.productId, this.userId});

  NftUserProductGetProductMintListNewParams.fromJson(
      Map<String, dynamic> json) {
    current = json['current'];
    rows = json['rows'];
    productId = json['productId'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['current'] = current;
    data['rows'] = rows;
    data['productId'] = productId;
    data['userId'] = userId;
    return data;
  }
}


class NftOrderGetOrderListParams {
  int? current;
  int? row;
  String? status;

  NftOrderGetOrderListParams({this.current, this.row, this.status});

  NftOrderGetOrderListParams.fromJson(Map<String, dynamic> json) {
    current = json['current'];
    row = json['row'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['current'] = current;
    data['row'] = row;
    data['status'] = status;
    return data;
  }
}

class NftMarketGetConsignmentProductListParams {
  int? current;
  int? rows;
  String? productId;
  int? price;

  NftMarketGetConsignmentProductListParams(
      {this.current, this.rows, this.productId, this.price});

  NftMarketGetConsignmentProductListParams.fromJson(Map<String, dynamic> json) {
    current = json['current'];
    rows = json['rows'];
    productId = json['productId'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['current'] = current;
    data['rows'] = rows;
    data['productId'] = productId;
    data['price'] = price;
    return data;
  }
}

class NftOrderCreateBuyOrderParams {
  String? holdUserId;
  String? productMintId;
  int? walletSource;

  NftOrderCreateBuyOrderParams(
      {this.holdUserId, this.productMintId, this.walletSource});

  NftOrderCreateBuyOrderParams.fromJson(Map<String, dynamic> json) {
    holdUserId = json['holdUserId'];
    productMintId = json['productMintId'];
    walletSource = json['walletSource'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['holdUserId'] = holdUserId;
    data['productMintId'] = productMintId;
    data['walletSource'] = walletSource;
    return data;
  }
}
