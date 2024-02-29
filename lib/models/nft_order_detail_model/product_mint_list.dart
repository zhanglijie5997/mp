import 'package:json_annotation/json_annotation.dart';

part 'product_mint_list.g.dart';

@JsonSerializable()
class ProductMintList {
  final String? id;
  final String? productMintName;
  final dynamic price;
  final dynamic orderId;
  final dynamic lockStatus;
  final dynamic status;
  final dynamic statusStr;

  const ProductMintList({
    this.id,
    this.productMintName,
    this.price,
    this.orderId,
    this.lockStatus,
    this.status,
    this.statusStr,
  });

  @override
  String toString() {
    return 'ProductMintList(id: $id, productMintName: $productMintName, price: $price, orderId: $orderId, lockStatus: $lockStatus, status: $status, statusStr: $statusStr)';
  }

  factory ProductMintList.fromJson(Map<String, dynamic> json) {
    return _$ProductMintListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductMintListToJson(this);

  ProductMintList copyWith({
    String? id,
    String? productMintName,
    dynamic price,
    dynamic orderId,
    dynamic lockStatus,
    dynamic status,
    dynamic statusStr,
  }) {
    return ProductMintList(
      id: id ?? this.id,
      productMintName: productMintName ?? this.productMintName,
      price: price ?? this.price,
      orderId: orderId ?? this.orderId,
      lockStatus: lockStatus ?? this.lockStatus,
      status: status ?? this.status,
      statusStr: statusStr ?? this.statusStr,
    );
  }
}
