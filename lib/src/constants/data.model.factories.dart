import 'package:equatable/equatable.dart';
import 'package:mp/src/models/response.dart';


typedef DataFactory<T extends Equatable> = T Function(Json json);

final Map<Type, DataFactory> dataModelFactories = <Type, DataFactory>{
  
};