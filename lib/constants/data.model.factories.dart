import 'package:equatable/equatable.dart';
import 'package:mp/models/response.dart';


typedef DataFactory<T extends Equatable> = T Function(Json json);
/// 结构体，接口映射的数据结构
final Map<Type, DataFactory> dataModelFactories = <Type, DataFactory>{
  
};