// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_user_product_get_product_mint_list_new_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NftUserProductGetProductMintListNewModel
    _$NftUserProductGetProductMintListNewModelFromJson(
            Map<String, dynamic> json) =>
        NftUserProductGetProductMintListNewModel(
          isProductBatchTransfer: json['isProductBatchTransfer'] as int?,
          total: json['total'] as int?,
          averagePrice: json['averagePrice'] as int?,
          rows: (json['rows'] as List<dynamic>?)
              ?.map((e) => Row.fromJson(e as Map<String, dynamic>))
              .toList(),
          isUserBatchTransfer: json['isUserBatchTransfer'] as int?,
        );

Map<String, dynamic> _$NftUserProductGetProductMintListNewModelToJson(
        NftUserProductGetProductMintListNewModel instance) =>
    <String, dynamic>{
      'isProductBatchTransfer': instance.isProductBatchTransfer,
      'total': instance.total,
      'averagePrice': instance.averagePrice,
      'rows': instance.rows,
      'isUserBatchTransfer': instance.isUserBatchTransfer,
    };
