import 'package:json_annotation/json_annotation.dart';

import 'pay_way.dart';

part 'row.g.dart';

@JsonSerializable()
class Row {
  final String? productMintId;
  final String? productName;
  final String? productCode;
  final String? productCover;
  final String? productImage;
  final num? price;
  final num? status;
  final String? statusStr;
  final num? tradeStatus;
  final List<PayWay>? payWay;
  final String? payWayStr;
  final num? sequence;
  final DateTime? updateDate;
  final String? userId;
  final num? showMeTag;

  const Row({
    this.productMintId,
    this.productName,
    this.productCode,
    this.productCover,
    this.productImage,
    this.price,
    this.status,
    this.statusStr,
    this.tradeStatus,
    this.payWay,
    this.payWayStr,
    this.sequence,
    this.updateDate,
    this.userId,
    this.showMeTag,
  });

  @override
  String toString() {
    return 'Row(productMintId: $productMintId, productName: $productName, productCode: $productCode, productCover: $productCover, productImage: $productImage, price: $price, status: $status, statusStr: $statusStr, tradeStatus: $tradeStatus, payWay: $payWay, payWayStr: $payWayStr, sequence: $sequence, updateDate: $updateDate, userId: $userId, showMeTag: $showMeTag)';
  }

  factory Row.fromJson(Map<String, dynamic> json) => _$RowFromJson(json);

  Map<String, dynamic> toJson() => _$RowToJson(this);

  Row copyWith({
    String? productMintId,
    String? productName,
    String? productCode,
    String? productCover,
    String? productImage,
    num? price,
    num? status,
    String? statusStr,
    num? tradeStatus,
    List<PayWay>? payWay,
    String? payWayStr,
    num? sequence,
    DateTime? updateDate,
    String? userId,
    num? showMeTag,
  }) {
    return Row(
      productMintId: productMintId ?? this.productMintId,
      productName: productName ?? this.productName,
      productCode: productCode ?? this.productCode,
      productCover: productCover ?? this.productCover,
      productImage: productImage ?? this.productImage,
      price: price ?? this.price,
      status: status ?? this.status,
      statusStr: statusStr ?? this.statusStr,
      tradeStatus: tradeStatus ?? this.tradeStatus,
      payWay: payWay ?? this.payWay,
      payWayStr: payWayStr ?? this.payWayStr,
      sequence: sequence ?? this.sequence,
      updateDate: updateDate ?? this.updateDate,
      userId: userId ?? this.userId,
      showMeTag: showMeTag ?? this.showMeTag,
    );
  }
}
