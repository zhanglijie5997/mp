// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_product_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProductListModel _$UserProductListModelFromJson(
        Map<String, dynamic> json) =>
    UserProductListModel(
      success: json['success'] as bool?,
      resultCode: json['resultCode'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$UserProductListModelToJson(
        UserProductListModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'resultCode': instance.resultCode,
      'data': instance.data,
      'dateTime': instance.dateTime,
    };
