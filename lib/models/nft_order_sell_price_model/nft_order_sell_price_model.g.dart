// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_order_sell_price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NftOrderSellPriceModel _$NftOrderSellPriceModelFromJson(
        Map<String, dynamic> json) =>
    NftOrderSellPriceModel(
      success: json['success'] as bool?,
      resultCode: json['resultCode'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$NftOrderSellPriceModelToJson(
        NftOrderSellPriceModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'resultCode': instance.resultCode,
      'data': instance.data,
      'dateTime': instance.dateTime,
    };
