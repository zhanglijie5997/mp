import 'package:mp/models/home_list_model/home_list_model.dart';
import 'package:mp/models/response.dart';

typedef DataFactory<T> = T Function(Json json);

/// 结构体，接口映射的数据结构
final Map<Type, DataFactory> dataModelFactories = <Type, DataFactory>{
  HomeListModel: HomeListModel.fromJson
};
