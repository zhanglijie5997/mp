import 'package:mp/api/api.dart';
import 'package:mp/models/product_detail_model/product_detail_model.dart';
import 'package:mp/models/response.dart';
import 'package:mp/utils/http.utils.dart';

class ProductRequest {
  /// 获取藏品详情
  static Future<ResponseModel<ProductDetailModel>> nftMarketGetProductMintDetails(String v) {
    return HttpUtil.fetchModel<ProductDetailModel>(FetchType.get,
        url: ApiName.NftMarketGetProductMintDetails, queryParameters: {
          "productMintId": v
        });
  }
}