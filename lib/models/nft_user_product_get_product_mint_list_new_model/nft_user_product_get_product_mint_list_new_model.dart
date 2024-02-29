import 'package:json_annotation/json_annotation.dart';

import 'row.dart';

part 'nft_user_product_get_product_mint_list_new_model.g.dart';

@JsonSerializable()
class NftUserProductGetProductMintListNewModel {
  final int? isProductBatchTransfer;
  final int? total;
  final int? averagePrice;
  final List<Row>? rows;
  final int? isUserBatchTransfer;

  const NftUserProductGetProductMintListNewModel({
    this.isProductBatchTransfer,
    this.total,
    this.averagePrice,
    this.rows,
    this.isUserBatchTransfer,
  });

  @override
  String toString() {
    return 'NftUserProductGetProductMintListNewModel(isProductBatchTransfer: $isProductBatchTransfer, total: $total, averagePrice: $averagePrice, rows: $rows, isUserBatchTransfer: $isUserBatchTransfer)';
  }

  factory NftUserProductGetProductMintListNewModel.fromJson(
      Map<String, dynamic> json) {
    return _$NftUserProductGetProductMintListNewModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$NftUserProductGetProductMintListNewModelToJson(this);
  }

  NftUserProductGetProductMintListNewModel copyWith({
    int? isProductBatchTransfer,
    int? total,
    int? averagePrice,
    List<Row>? rows,
    int? isUserBatchTransfer,
  }) {
    return NftUserProductGetProductMintListNewModel(
      isProductBatchTransfer:
          isProductBatchTransfer ?? this.isProductBatchTransfer,
      total: total ?? this.total,
      averagePrice: averagePrice ?? this.averagePrice,
      rows: rows ?? this.rows,
      isUserBatchTransfer: isUserBatchTransfer ?? this.isUserBatchTransfer,
    );
  }
}
