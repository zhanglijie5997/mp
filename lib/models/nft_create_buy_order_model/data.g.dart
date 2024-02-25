// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      orderId: json['orderId'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      num: json['num'] as int?,
      productName: json['productName'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'orderId': instance.orderId,
      'amount': instance.amount,
      'num': instance.num,
      'productName': instance.productName,
    };
