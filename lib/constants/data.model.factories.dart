import 'package:mp/models/accomoun_model/accomoun_model.dart';
import 'package:mp/models/accomoun_tab_list_model/accomoun_tab_list_model.dart';
import 'package:mp/models/consignment_list_model/consignment_list_model.dart';
import 'package:mp/models/get_plate_list_model/get_plate_list_model.dart';
import 'package:mp/models/home_banner_model/home_banner_model.dart';
import 'package:mp/models/home_list_model/home_list_model.dart';
import 'package:mp/models/home_position_model/home_position_model.dart';
import 'package:mp/models/nft_create_buy_order_model/nft_create_buy_order_model.dart';
import 'package:mp/models/nft_order_get_order_list_model/nft_order_get_order_list_model.dart';
import 'package:mp/models/product_detail_model/product_detail_model.dart';
import 'package:mp/models/product_list_model/product_list_model.dart';
import 'package:mp/models/response.dart';
import 'package:mp/models/user_phone_login_model/user_phone_login_model.dart';
import 'package:mp/models/user_product_list_model/user_product_list_model.dart';
import 'package:mp/models/wx_user_model/wx_user_model.dart';

typedef DataFactory<T> = T Function(Json json);

/// 结构体，接口映射的数据结构
final Map<Type, DataFactory> dataModelFactories = <Type, DataFactory>{
  HomeListModel: HomeListModel.fromJson,
  AccomounModel: AccomounModel.fromJson,
  HomeBannerModel: HomeBannerModel.fromJson,
  HomePositionModel: HomePositionModel.fromJson,
  AccomounTabListModel: AccomounTabListModel.fromJson,
  GetPlateListModel: GetPlateListModel.fromJson,
  ProductListModel: ProductListModel.fromJson,
  WxUserModel: WxUserModel.fromJson,
  UserProductListModel: UserProductListModel.fromJson,
  UserPhoneLoginModel: UserPhoneLoginModel.fromJson,
  ProductDetailModel: ProductDetailModel.fromJson,
  ConsignmentListModel: ConsignmentListModel.fromJson,
  NftCreateBuyOrderModel: NftCreateBuyOrderModel.fromJson,
  NftOrderGetOrderListModel: NftOrderGetOrderListModel.fromJson
};
