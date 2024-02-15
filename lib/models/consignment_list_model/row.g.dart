// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Row _$RowFromJson(Map<String, dynamic> json) => Row(
      productMintId: json['productMintId'] as String?,
      productName: json['productName'] as String?,
      productCode: json['productCode'] as String?,
      productCover: json['productCover'] as String?,
      productImage: json['productImage'] as String?,
      price: json['price'] as num?,
      status: json['status'] as num?,
      statusStr: json['statusStr'] as String?,
      tradeStatus: json['tradeStatus'] as num?,
      payWay: (json['payWay'] as List<dynamic>?)
          ?.map((e) => PayWay.fromJson(e as Map<String, dynamic>))
          .toList(),
      payWayStr: json['payWayStr'] as String?,
      sequence: json['sequence'] as num?,
      updateDate: json['updateDate'] == null
          ? null
          : DateTime.parse(json['updateDate'] as String),
      userId: json['userId'] as String?,
      showMeTag: json['showMeTag'] as num?,
    );

Map<String, dynamic> _$RowToJson(Row instance) => <String, dynamic>{
      'productMintId': instance.productMintId,
      'productName': instance.productName,
      'productCode': instance.productCode,
      'productCover': instance.productCover,
      'productImage': instance.productImage,
      'price': instance.price,
      'status': instance.status,
      'statusStr': instance.statusStr,
      'tradeStatus': instance.tradeStatus,
      'payWay': instance.payWay,
      'payWayStr': instance.payWayStr,
      'sequence': instance.sequence,
      'updateDate': instance.updateDate?.toIso8601String(),
      'userId': instance.userId,
      'showMeTag': instance.showMeTag,
    };
