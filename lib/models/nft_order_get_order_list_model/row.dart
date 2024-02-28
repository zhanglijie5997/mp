import 'package:json_annotation/json_annotation.dart';

import 'product_mint_list.dart';

part 'row.g.dart';

@JsonSerializable()
class Row {
  final String? id;
  final String? productId;
  final dynamic productMintId;
  final String? productName;
  final String? productMintName;
  final String? productImg;
  final String? orderId;
  final dynamic orderStatus;
  final dynamic orderAmount;
  final dynamic actualAmount;
  final dynamic serverFeeAmount;
  final dynamic num;
  final dynamic orderType;
  final dynamic tradeStatus;
  final dynamic readStatus;
  final String? createDate;
  final dynamic batchOrderId;
  final dynamic isBatch;
  final List<ProductMintList>? productMintList;
  final String? payWay;
  final dynamic walletSource;
  final dynamic productType;

  const Row({
    this.id,
    this.productId,
    this.productMintId,
    this.productName,
    this.productMintName,
    this.productImg,
    this.orderId,
    this.orderStatus,
    this.orderAmount,
    this.actualAmount,
    this.serverFeeAmount,
    this.num,
    this.orderType,
    this.tradeStatus,
    this.readStatus,
    this.createDate,
    this.batchOrderId,
    this.isBatch,
    this.productMintList,
    this.payWay,
    this.walletSource,
    this.productType,
  });

  @override
  String toString() {
    return 'Row(id: $id, productId: $productId, productMintId: $productMintId, productName: $productName, productMintName: $productMintName, productImg: $productImg, orderId: $orderId, orderStatus: $orderStatus, orderAmount: $orderAmount, actualAmount: $actualAmount, serverFeeAmount: $serverFeeAmount, num: $num, orderType: $orderType, tradeStatus: $tradeStatus, readStatus: $readStatus, createDate: $createDate, batchOrderId: $batchOrderId, isBatch: $isBatch, productMintList: $productMintList, payWay: $payWay, walletSource: $walletSource, productType: $productType)';
  }

  factory Row.fromJson(Map<String, dynamic> json) => _$RowFromJson(json);

  Map<String, dynamic> toJson() => _$RowToJson(this);

  Row copyWith({
    String? id,
    String? productId,
    dynamic productMintId,
    String? productName,
    String? productMintName,
    String? productImg,
    String? orderId,
    dynamic orderStatus,
    dynamic orderAmount,
    dynamic actualAmount,
    dynamic serverFeeAmount,
    dynamic num,
    dynamic orderType,
    dynamic tradeStatus,
    dynamic readStatus,
    String? createDate,
    dynamic batchOrderId,
    dynamic isBatch,
    List<ProductMintList>? productMintList,
    String? payWay,
    dynamic walletSource,
    dynamic productType,
  }) {
    return Row(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      productMintId: productMintId ?? this.productMintId,
      productName: productName ?? this.productName,
      productMintName: productMintName ?? this.productMintName,
      productImg: productImg ?? this.productImg,
      orderId: orderId ?? this.orderId,
      orderStatus: orderStatus ?? this.orderStatus,
      orderAmount: orderAmount ?? this.orderAmount,
      actualAmount: actualAmount ?? this.actualAmount,
      serverFeeAmount: serverFeeAmount ?? this.serverFeeAmount,
      num: num ?? this.num,
      orderType: orderType ?? this.orderType,
      tradeStatus: tradeStatus ?? this.tradeStatus,
      readStatus: readStatus ?? this.readStatus,
      createDate: createDate ?? this.createDate,
      batchOrderId: batchOrderId ?? this.batchOrderId,
      isBatch: isBatch ?? this.isBatch,
      productMintList: productMintList ?? this.productMintList,
      payWay: payWay ?? this.payWay,
      walletSource: walletSource ?? this.walletSource,
      productType: productType ?? this.productType,
    );
  }
}
