// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      productSeriesId: json['productSeriesId'],
      orderId: json['orderId'],
      productId: json['productId'],
      productName: json['productName'],
      productImage: json['productImage'],
      productMintName: json['productMintName'],
      orderAmount: json['orderAmount'],
      actualAmount: json['actualAmount'],
      discountAmount: json['discountAmount'],
      orderTime: json['orderTime'],
      payTime: json['payTime'],
      orderStatus: json['orderStatus'],
      endDate: json['endDate'],
      finishDate: json['finishDate'],
      num: json['num'],
      orderType: json['orderType'],
      productMintId: json['productMintId'],
      productMintList: (json['productMintList'] as List<dynamic>?)
          ?.map((e) => ProductMintList.fromJson(e as Map<String, dynamic>))
          .toList(),
      resaleWalletAddress: json['resaleWalletAddress'],
      buyWalletAddress: json['buyWalletAddress'],
      chargeAmount: json['chargeAmount'],
      predictAmount: json['predictAmount'],
      feeRatio: json['feeRatio'],
      mintNumber: json['mintNumber'],
      tradeStatus: json['tradeStatus'],
      txHash: json['txHash'],
      activityId: json['activityId'],
      productShareImage: json['productShareImage'],
      payWay: json['payWay'],
      walletSource: json['walletSource'],
      userId: json['userId'],
      type: json['type'],
      lockStatus: json['lockStatus'],
      isBoxPrize: json['isBoxPrize'],
      batchOrder: json['batchOrder'] as bool?,
      isQuickOrder: json['isQuickOrder'],
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'productSeriesId': instance.productSeriesId,
      'orderId': instance.orderId,
      'productId': instance.productId,
      'productName': instance.productName,
      'productImage': instance.productImage,
      'productMintName': instance.productMintName,
      'orderAmount': instance.orderAmount,
      'actualAmount': instance.actualAmount,
      'discountAmount': instance.discountAmount,
      'orderTime': instance.orderTime,
      'payTime': instance.payTime,
      'orderStatus': instance.orderStatus,
      'endDate': instance.endDate,
      'finishDate': instance.finishDate,
      'num': instance.num,
      'orderType': instance.orderType,
      'productMintId': instance.productMintId,
      'productMintList': instance.productMintList,
      'resaleWalletAddress': instance.resaleWalletAddress,
      'buyWalletAddress': instance.buyWalletAddress,
      'chargeAmount': instance.chargeAmount,
      'predictAmount': instance.predictAmount,
      'feeRatio': instance.feeRatio,
      'mintNumber': instance.mintNumber,
      'tradeStatus': instance.tradeStatus,
      'txHash': instance.txHash,
      'activityId': instance.activityId,
      'productShareImage': instance.productShareImage,
      'payWay': instance.payWay,
      'walletSource': instance.walletSource,
      'userId': instance.userId,
      'type': instance.type,
      'lockStatus': instance.lockStatus,
      'isBoxPrize': instance.isBoxPrize,
      'batchOrder': instance.batchOrder,
      'isQuickOrder': instance.isQuickOrder,
    };
