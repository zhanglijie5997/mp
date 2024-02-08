// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      productId: json['productId'] as String?,
      productMintId: json['productMintId'],
      productName: json['productName'] as String?,
      productCover: json['productCover'] as String?,
      productImage: json['productImage'] as String?,
      sumNumber: json['sumNumber'] as int?,
      consignmentNumber: json['consignmentNumber'] as int?,
      synthesisStatus: json['synthesisStatus'] as int?,
      updateDate: json['updateDate'] as String?,
      onTop: json['onTop'] as int?,
      tagImage: json['tagImage'] as String?,
      type: json['type'] as String?,
      isBoxPrize: json['isBoxPrize'],
      lockStatus: json['lockStatus'],
      isHide: json['isHide'] as int?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'productId': instance.productId,
      'productMintId': instance.productMintId,
      'productName': instance.productName,
      'productCover': instance.productCover,
      'productImage': instance.productImage,
      'sumNumber': instance.sumNumber,
      'consignmentNumber': instance.consignmentNumber,
      'synthesisStatus': instance.synthesisStatus,
      'updateDate': instance.updateDate,
      'onTop': instance.onTop,
      'tagImage': instance.tagImage,
      'type': instance.type,
      'isBoxPrize': instance.isBoxPrize,
      'lockStatus': instance.lockStatus,
      'isHide': instance.isHide,
    };
