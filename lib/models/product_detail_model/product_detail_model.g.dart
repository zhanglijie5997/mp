// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailModel _$ProductDetailModelFromJson(Map<String, dynamic> json) =>
    ProductDetailModel(
      success: json['success'] as bool?,
      resultCode: json['resultCode'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$ProductDetailModelToJson(ProductDetailModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'resultCode': instance.resultCode,
      'data': instance.data,
      'dateTime': instance.dateTime,
    };
