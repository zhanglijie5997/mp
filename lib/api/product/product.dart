import 'package:mp/api/api.dart';
import 'package:mp/models/consignment_list_model/consignment_list_model.dart';
import 'package:mp/models/nft_create_buy_order_model/nft_create_buy_order_model.dart';
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
        url: ApiName.NftMarketGetConsignmentList,
        queryParameters: v.toJson());
  }

  /// 创建订单
  static Future<ResponseModel<NftCreateBuyOrderModel>>
  nftOrderCreateBuyOrder(NftOrderCreateBuyOrderParams v) {
    return HttpUtil.fetchModel<NftCreateBuyOrderModel>(FetchType.post,
        url: ApiName.NftOrderCreateBuyOrder,
        body: v.toJson());
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
