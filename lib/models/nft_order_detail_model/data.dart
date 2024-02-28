import 'package:json_annotation/json_annotation.dart';

import 'product_mint_list.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final dynamic productSeriesId;
  final dynamic orderId;
  final dynamic productId;
  final dynamic productName;
  final dynamic productImage;
  final dynamic productMintName;
  final dynamic orderAmount;
  final dynamic actualAmount;
  final dynamic discountAmount;
  final dynamic orderTime;
  final dynamic payTime;
  final dynamic orderStatus;
  final dynamic endDate;
  final dynamic finishDate;
  final dynamic num;
  final dynamic orderType;
  final dynamic productMintId;
  final List<ProductMintList>? productMintList;
  final dynamic resaleWalletAddress;
  final dynamic buyWalletAddress;
  final double? chargeAmount;
  final double? predictAmount;
  final dynamic feeRatio;
  final dynamic mintNumber;
  final dynamic tradeStatus;
  final dynamic txHash;
  final dynamic activityId;
  final dynamic productShareImage;
  final dynamic payWay;
  final dynamic walletSource;
  final dynamic userId;
  final dynamic type;
  final dynamic lockStatus;
  final dynamic isBoxPrize;
  final bool? batchOrder;
  final dynamic isQuickOrder;

  const Data({
    this.productSeriesId,
    this.orderId,
    this.productId,
    this.productName,
    this.productImage,
    this.productMintName,
    this.orderAmount,
    this.actualAmount,
    this.discountAmount,
    this.orderTime,
    this.payTime,
    this.orderStatus,
    this.endDate,
    this.finishDate,
    this.num,
    this.orderType,
    this.productMintId,
    this.productMintList,
    this.resaleWalletAddress,
    this.buyWalletAddress,
    this.chargeAmount,
    this.predictAmount,
    this.feeRatio,
    this.mintNumber,
    this.tradeStatus,
    this.txHash,
    this.activityId,
    this.productShareImage,
    this.payWay,
    this.walletSource,
    this.userId,
    this.type,
    this.lockStatus,
    this.isBoxPrize,
    this.batchOrder,
    this.isQuickOrder,
  });

  @override
  String toString() {
    return 'Data(productSeriesId: $productSeriesId, orderId: $orderId, productId: $productId, productName: $productName, productImage: $productImage, productMintName: $productMintName, orderAmount: $orderAmount, actualAmount: $actualAmount, discountAmount: $discountAmount, orderTime: $orderTime, payTime: $payTime, orderStatus: $orderStatus, endDate: $endDate, finishDate: $finishDate, num: $num, orderType: $orderType, productMintId: $productMintId, productMintList: $productMintList, resaleWalletAddress: $resaleWalletAddress, buyWalletAddress: $buyWalletAddress, chargeAmount: $chargeAmount, predictAmount: $predictAmount, feeRatio: $feeRatio, mintNumber: $mintNumber, tradeStatus: $tradeStatus, txHash: $txHash, activityId: $activityId, productShareImage: $productShareImage, payWay: $payWay, walletSource: $walletSource, userId: $userId, type: $type, lockStatus: $lockStatus, isBoxPrize: $isBoxPrize, batchOrder: $batchOrder, isQuickOrder: $isQuickOrder)';
  }

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    dynamic productSeriesId,
    dynamic orderId,
    dynamic productId,
    dynamic productName,
    dynamic productImage,
    dynamic productMintName,
    dynamic orderAmount,
    dynamic actualAmount,
    dynamic discountAmount,
    dynamic orderTime,
    dynamic payTime,
    dynamic orderStatus,
    dynamic endDate,
    dynamic finishDate,
    dynamic num,
    dynamic orderType,
    dynamic productMintId,
    List<ProductMintList>? productMintList,
    dynamic resaleWalletAddress,
    dynamic buyWalletAddress,
    double? chargeAmount,
    double? predictAmount,
    dynamic feeRatio,
    dynamic mintNumber,
    dynamic tradeStatus,
    dynamic txHash,
    dynamic activityId,
    dynamic productShareImage,
    dynamic payWay,
    dynamic walletSource,
    dynamic userId,
    dynamic type,
    dynamic lockStatus,
    dynamic isBoxPrize,
    bool? batchOrder,
    dynamic isQuickOrder,
  }) {
    return Data(
      productSeriesId: productSeriesId ?? this.productSeriesId,
      orderId: orderId ?? this.orderId,
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      productImage: productImage ?? this.productImage,
      productMintName: productMintName ?? this.productMintName,
      orderAmount: orderAmount ?? this.orderAmount,
      actualAmount: actualAmount ?? this.actualAmount,
      discountAmount: discountAmount ?? this.discountAmount,
      orderTime: orderTime ?? this.orderTime,
      payTime: payTime ?? this.payTime,
      orderStatus: orderStatus ?? this.orderStatus,
      endDate: endDate ?? this.endDate,
      finishDate: finishDate ?? this.finishDate,
      num: num ?? this.num,
      orderType: orderType ?? this.orderType,
      productMintId: productMintId ?? this.productMintId,
      productMintList: productMintList ?? this.productMintList,
      resaleWalletAddress: resaleWalletAddress ?? this.resaleWalletAddress,
      buyWalletAddress: buyWalletAddress ?? this.buyWalletAddress,
      chargeAmount: chargeAmount ?? this.chargeAmount,
      predictAmount: predictAmount ?? this.predictAmount,
      feeRatio: feeRatio ?? this.feeRatio,
      mintNumber: mintNumber ?? this.mintNumber,
      tradeStatus: tradeStatus ?? this.tradeStatus,
      txHash: txHash ?? this.txHash,
      activityId: activityId ?? this.activityId,
      productShareImage: productShareImage ?? this.productShareImage,
      payWay: payWay ?? this.payWay,
      walletSource: walletSource ?? this.walletSource,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      lockStatus: lockStatus ?? this.lockStatus,
      isBoxPrize: isBoxPrize ?? this.isBoxPrize,
      batchOrder: batchOrder ?? this.batchOrder,
      isQuickOrder: isQuickOrder ?? this.isQuickOrder,
    );
  }
}
