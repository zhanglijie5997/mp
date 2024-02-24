// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_create_buy_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NftCreateBuyOrderModel _$NftCreateBuyOrderModelFromJson(
        Map<String, dynamic> json) =>
    NftCreateBuyOrderModel(
      success: json['success'] as bool?,
      resultCode: json['resultCode'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$NftCreateBuyOrderModelToJson(
        NftCreateBuyOrderModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'resultCode': instance.resultCode,
      'data': instance.data,
      'dateTime': instance.dateTime,
    };
