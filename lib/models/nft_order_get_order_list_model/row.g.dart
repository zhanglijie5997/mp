// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Row _$RowFromJson(Map<String, dynamic> json) => Row(
      id: json['id'] as String?,
      productId: json['productId'] as String?,
      productMintId: json['productMintId'],
      productName: json['productName'] as String?,
      productMintName: json['productMintName'] as String?,
      productImg: json['productImg'] as String?,
      orderId: json['orderId'] as String?,
      orderStatus: json['orderStatus'],
      orderAmount: json['orderAmount'],
      actualAmount: json['actualAmount'],
      serverFeeAmount: json['serverFeeAmount'],
      num: json['num'],
      orderType: json['orderType'],
      tradeStatus: json['tradeStatus'],
      readStatus: json['readStatus'],
      createDate: json['createDate'] as String?,
      batchOrderId: json['batchOrderId'],
      isBatch: json['isBatch'],
      productMintList: (json['productMintList'] as List<dynamic>?)
          ?.map((e) => ProductMintList.fromJson(e as Map<String, dynamic>))
          .toList(),
      payWay: json['payWay'] as String?,
      walletSource: json['walletSource'],
      productType: json['productType'],
    );

Map<String, dynamic> _$RowToJson(Row instance) => <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'productMintId': instance.productMintId,
      'productName': instance.productName,
      'productMintName': instance.productMintName,
      'productImg': instance.productImg,
      'orderId': instance.orderId,
      'orderStatus': instance.orderStatus,
      'orderAmount': instance.orderAmount,
      'actualAmount': instance.actualAmount,
      'serverFeeAmount': instance.serverFeeAmount,
      'num': instance.num,
      'orderType': instance.orderType,
      'tradeStatus': instance.tradeStatus,
      'readStatus': instance.readStatus,
      'createDate': instance.createDate,
      'batchOrderId': instance.batchOrderId,
      'isBatch': instance.isBatch,
      'productMintList': instance.productMintList,
      'payWay': instance.payWay,
      'walletSource': instance.walletSource,
      'productType': instance.productType,
    };
