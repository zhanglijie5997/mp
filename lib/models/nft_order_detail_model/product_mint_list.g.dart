// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_mint_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductMintList _$ProductMintListFromJson(Map<String, dynamic> json) =>
    ProductMintList(
      id: json['id'] as String?,
      productMintName: json['productMintName'] as String?,
      price: json['price'] as int?,
      orderId: json['orderId'],
      lockStatus: json['lockStatus'],
      status: json['status'],
      statusStr: json['statusStr'],
    );

Map<String, dynamic> _$ProductMintListToJson(ProductMintList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productMintName': instance.productMintName,
      'price': instance.price,
      'orderId': instance.orderId,
      'lockStatus': instance.lockStatus,
      'status': instance.status,
      'statusStr': instance.statusStr,
    };
