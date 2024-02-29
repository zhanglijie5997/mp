// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      maxPrice: (json['maxPrice'] as num?)?.toDouble(),
      feeRatio: json['feeRatio'] as int?,
      minPrice: (json['minPrice'] as num?)?.toDouble(),
      buyAmount: json['buyAmount'] as int?,
      floorPrice: json['floorPrice'] as int?,
      batchMaxConsignNum: json['batchMaxConsignNum'] as int?,
      userHoldNum: json['userHoldNum'] as int?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'maxPrice': instance.maxPrice,
      'feeRatio': instance.feeRatio,
      'minPrice': instance.minPrice,
      'buyAmount': instance.buyAmount,
      'floorPrice': instance.floorPrice,
      'batchMaxConsignNum': instance.batchMaxConsignNum,
      'userHoldNum': instance.userHoldNum,
    };
