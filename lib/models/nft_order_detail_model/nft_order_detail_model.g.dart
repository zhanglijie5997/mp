// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_order_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NftOrderDetailModel _$NftOrderDetailModelFromJson(Map<String, dynamic> json) =>
    NftOrderDetailModel(
      success: json['success'] as bool?,
      resultCode: json['resultCode'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$NftOrderDetailModelToJson(
        NftOrderDetailModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'resultCode': instance.resultCode,
      'data': instance.data,
      'dateTime': instance.dateTime,
    };
