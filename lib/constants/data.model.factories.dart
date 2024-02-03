import 'package:mp/models/accomoun_model/accomoun_model.dart';
import 'package:mp/models/accomoun_tab_list_model/accomoun_tab_list_model.dart';
import 'package:mp/models/home_banner_model/home_banner_model.dart';
import 'package:mp/models/home_list_model/home_list_model.dart';
import 'package:mp/models/home_position_model/home_position_model.dart';
import 'package:mp/models/response.dart';

typedef DataFactory<T> = T Function(Json json);

/// 结构体，接口映射的数据结构
final Map<Type, DataFactory> dataModelFactories = <Type, DataFactory>{
  HomeListModel: HomeListModel.fromJson,
  AccomounModel: AccomounModel.fromJson,
  HomeBannerModel: HomeBannerModel.fromJson,
  HomePositionModel: HomePositionModel.fromJson,
  AccomounTabListModel: AccomounTabListModel.fromJson
};
