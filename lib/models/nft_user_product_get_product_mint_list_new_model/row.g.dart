// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Row _$RowFromJson(Map<String, dynamic> json) => Row(
      productMintId: json['productMintId'] as String?,
      productCode: json['productCode'] as String?,
      price: json['price'] as int?,
      status: json['status'] as int?,
      statusStr: json['statusStr'] as String?,
      synthesisStatus: json['synthesisStatus'] as int?,
      holdDaysNumber: json['holdDaysNumber'] as int?,
      issueNumber: json['issueNumber'] as String?,
      isBoxPrize: json['isBoxPrize'] as int?,
    );

Map<String, dynamic> _$RowToJson(Row instance) => <String, dynamic>{
      'productMintId': instance.productMintId,
      'productCode': instance.productCode,
      'price': instance.price,
      'status': instance.status,
      'statusStr': instance.statusStr,
      'synthesisStatus': instance.synthesisStatus,
      'holdDaysNumber': instance.holdDaysNumber,
      'issueNumber': instance.issueNumber,
      'isBoxPrize': instance.isBoxPrize,
    };
