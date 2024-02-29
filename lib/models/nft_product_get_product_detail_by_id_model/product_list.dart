import 'package:json_annotation/json_annotation.dart';

part 'product_list.g.dart';

@JsonSerializable()
class ProductList {
  final String? productId;
  final String? productImage;
  final String? nftBoxId;
  final String? productName;
  final int? productNumber;
  final String? drawOdds;
  final String? tagId;
  final String? tagImage;

  const ProductList({
    this.productId,
    this.productImage,
    this.nftBoxId,
    this.productName,
    this.productNumber,
    this.drawOdds,
    this.tagId,
    this.tagImage,
  });

  @override
  String toString() {
    return 'ProductList(productId: $productId, productImage: $productImage, nftBoxId: $nftBoxId, productName: $productName, productNumber: $productNumber, drawOdds: $drawOdds, tagId: $tagId, tagImage: $tagImage)';
  }

  factory ProductList.fromJson(Map<String, dynamic> json) {
    return _$ProductListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductListToJson(this);

  ProductList copyWith({
    String? productId,
    String? productImage,
    String? nftBoxId,
    String? productName,
    int? productNumber,
    String? drawOdds,
    String? tagId,
    String? tagImage,
  }) {
    return ProductList(
      productId: productId ?? this.productId,
      productImage: productImage ?? this.productImage,
      nftBoxId: nftBoxId ?? this.nftBoxId,
      productName: productName ?? this.productName,
      productNumber: productNumber ?? this.productNumber,
      drawOdds: drawOdds ?? this.drawOdds,
      tagId: tagId ?? this.tagId,
      tagImage: tagImage ?? this.tagImage,
    );
  }
}
