// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Row _$RowFromJson(Map<String, dynamic> json) => Row(
      productId: json['productId'] as String?,
      productName: json['productName'] as String?,
      productCover: json['productCover'] as String?,
      series: json['series'] as String?,
      issueNumber: json['issueNumber'] as String?,
      circulateNumber: json['circulateNumber'] as num?,
      price: json['price'] as num?,
      isHide: json['isHide'] as num?,
      isResell: json['isResell'] as num?,
      sort: json['sort'] as num?,
      updateDate: json['updateDate'],
      follow: json['follow'] as num?,
      type: json['type'] as num?,
      transactionNumber: json['transactionNumber'] as String?,
      notOpenNumber: json['notOpenNumber'],
      tagId: json['tagId'],
      tagSort: json['tagSort'],
      tagImage: json['tagImage'],
      isBoxPrize: json['isBoxPrize'] as num?,
    );

Map<String, dynamic> _$RowToJson(Row instance) => <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'productCover': instance.productCover,
      'series': instance.series,
      'issueNumber': instance.issueNumber,
      'circulateNumber': instance.circulateNumber,
      'price': instance.price,
      'isHide': instance.isHide,
      'isResell': instance.isResell,
      'sort': instance.sort,
      'updateDate': instance.updateDate,
      'follow': instance.follow,
      'type': instance.type,
      'transactionNumber': instance.transactionNumber,
      'notOpenNumber': instance.notOpenNumber,
      'tagId': instance.tagId,
      'tagSort': instance.tagSort,
      'tagImage': instance.tagImage,
      'isBoxPrize': instance.isBoxPrize,
    };
