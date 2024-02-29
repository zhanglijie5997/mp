// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductList _$ProductListFromJson(Map<String, dynamic> json) => ProductList(
      productId: json['productId'] as String?,
      productImage: json['productImage'] as String?,
      nftBoxId: json['nftBoxId'] as String?,
      productName: json['productName'] as String?,
      productNumber: json['productNumber'] as int?,
      drawOdds: json['drawOdds'] as String?,
      tagId: json['tagId'] as String?,
      tagImage: json['tagImage'] as String?,
    );

Map<String, dynamic> _$ProductListToJson(ProductList instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productImage': instance.productImage,
      'nftBoxId': instance.nftBoxId,
      'productName': instance.productName,
      'productNumber': instance.productNumber,
      'drawOdds': instance.drawOdds,
      'tagId': instance.tagId,
      'tagImage': instance.tagImage,
    };
