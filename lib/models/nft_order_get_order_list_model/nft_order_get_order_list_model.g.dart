// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_order_get_order_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NftOrderGetOrderListModel _$NftOrderGetOrderListModelFromJson(
        Map<String, dynamic> json) =>
    NftOrderGetOrderListModel(
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => Row.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$NftOrderGetOrderListModelToJson(
        NftOrderGetOrderListModel instance) =>
    <String, dynamic>{
      'rows': instance.rows,
      'total': instance.total,
    };
