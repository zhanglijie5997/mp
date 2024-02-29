// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_product_get_product_detail_by_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NftProductGetProductDetailByIdModel
    _$NftProductGetProductDetailByIdModelFromJson(Map<String, dynamic> json) =>
        NftProductGetProductDetailByIdModel(
          success: json['success'] as bool?,
          resultCode: json['resultCode'] as String?,
          data: json['data'] == null
              ? null
              : Data.fromJson(json['data'] as Map<String, dynamic>),
          dateTime: json['dateTime'] as String?,
        );

Map<String, dynamic> _$NftProductGetProductDetailByIdModelToJson(
        NftProductGetProductDetailByIdModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'resultCode': instance.resultCode,
      'data': instance.data,
      'dateTime': instance.dateTime,
    };
