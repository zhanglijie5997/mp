import 'package:json_annotation/json_annotation.dart';

part 'row.g.dart';

@JsonSerializable()
class Row {
  final String? productId;
  final String? productName;
  final String? productCover;
  final String? series;
  final String? issueNumber;
  final num? circulateNumber;
  final num? price;
  final num? isHide;
  final num? isResell;
  final num? sort;
  final dynamic updateDate;
  final num? follow;
  final num? type;
  final String? transactionNumber;
  final dynamic notOpenNumber;
  final dynamic tagId;
  final dynamic tagSort;
  final dynamic tagImage;
  final num? isBoxPrize;

  const Row({
    this.productId,
    this.productName,
    this.productCover,
    this.series,
    this.issueNumber,
    this.circulateNumber,
    this.price,
    this.isHide,
    this.isResell,
    this.sort,
    this.updateDate,
    this.follow,
    this.type,
    this.transactionNumber,
    this.notOpenNumber,
    this.tagId,
    this.tagSort,
    this.tagImage,
    this.isBoxPrize,
  });

  @override
  String toString() {
    return 'Row(productId: $productId, productName: $productName, productCover: $productCover, series: $series, issueNumber: $issueNumber, circulateNumber: $circulateNumber, price: $price, isHide: $isHide, isResell: $isResell, sort: $sort, updateDate: $updateDate, follow: $follow, type: $type, transactionNumber: $transactionNumber, notOpenNumber: $notOpenNumber, tagId: $tagId, tagSort: $tagSort, tagImage: $tagImage, isBoxPrize: $isBoxPrize)';
  }

  factory Row.fromJson(Map<String, dynamic> json) => _$RowFromJson(json);

  Map<String, dynamic> toJson() => _$RowToJson(this);

  Row copyWith({
    String? productId,
    String? productName,
    String? productCover,
    String? series,
    String? issueNumber,
    num? circulateNumber,
    num? price,
    num? isHide,
    num? isResell,
    num? sort,
    dynamic updateDate,
    num? follow,
    num? type,
    String? transactionNumber,
    dynamic notOpenNumber,
    dynamic tagId,
    dynamic tagSort,
    dynamic tagImage,
    num? isBoxPrize,
  }) {
    return Row(
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      productCover: productCover ?? this.productCover,
      series: series ?? this.series,
      issueNumber: issueNumber ?? this.issueNumber,
      circulateNumber: circulateNumber ?? this.circulateNumber,
      price: price ?? this.price,
      isHide: isHide ?? this.isHide,
      isResell: isResell ?? this.isResell,
      sort: sort ?? this.sort,
      updateDate: updateDate ?? this.updateDate,
      follow: follow ?? this.follow,
      type: type ?? this.type,
      transactionNumber: transactionNumber ?? this.transactionNumber,
      notOpenNumber: notOpenNumber ?? this.notOpenNumber,
      tagId: tagId ?? this.tagId,
      tagSort: tagSort ?? this.tagSort,
      tagImage: tagImage ?? this.tagImage,
      isBoxPrize: isBoxPrize ?? this.isBoxPrize,
    );
  }
}
