import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  final String? productId;
  final dynamic productMintId;
  final String? productName;
  final String? productCover;
  final String? productImage;
  final int? sumNumber;
  final int? consignmentNumber;
  final int? synthesisStatus;
  final String? updateDate;
  final int? onTop;
  final String? tagImage;
  final String? type;
  final dynamic isBoxPrize;
  final dynamic lockStatus;
  final int? isHide;

  const Datum({
    this.productId,
    this.productMintId,
    this.productName,
    this.productCover,
    this.productImage,
    this.sumNumber,
    this.consignmentNumber,
    this.synthesisStatus,
    this.updateDate,
    this.onTop,
    this.tagImage,
    this.type,
    this.isBoxPrize,
    this.lockStatus,
    this.isHide,
  });

  @override
  String toString() {
    return 'Datum(productId: $productId, productMintId: $productMintId, productName: $productName, productCover: $productCover, productImage: $productImage, sumNumber: $sumNumber, consignmentNumber: $consignmentNumber, synthesisStatus: $synthesisStatus, updateDate: $updateDate, onTop: $onTop, tagImage: $tagImage, type: $type, isBoxPrize: $isBoxPrize, lockStatus: $lockStatus, isHide: $isHide)';
  }

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);

  Datum copyWith({
    String? productId,
    dynamic productMintId,
    String? productName,
    String? productCover,
    String? productImage,
    int? sumNumber,
    int? consignmentNumber,
    int? synthesisStatus,
    String? updateDate,
    int? onTop,
    String? tagImage,
    String? type,
    dynamic isBoxPrize,
    dynamic lockStatus,
    int? isHide,
  }) {
    return Datum(
      productId: productId ?? this.productId,
      productMintId: productMintId ?? this.productMintId,
      productName: productName ?? this.productName,
      productCover: productCover ?? this.productCover,
      productImage: productImage ?? this.productImage,
      sumNumber: sumNumber ?? this.sumNumber,
      consignmentNumber: consignmentNumber ?? this.consignmentNumber,
      synthesisStatus: synthesisStatus ?? this.synthesisStatus,
      updateDate: updateDate ?? this.updateDate,
      onTop: onTop ?? this.onTop,
      tagImage: tagImage ?? this.tagImage,
      type: type ?? this.type,
      isBoxPrize: isBoxPrize ?? this.isBoxPrize,
      lockStatus: lockStatus ?? this.lockStatus,
      isHide: isHide ?? this.isHide,
    );
  }
}
