import 'package:mp/api/api.dart';
import 'package:mp/models/consignment_list_model/consignment_list_model.dart';
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
