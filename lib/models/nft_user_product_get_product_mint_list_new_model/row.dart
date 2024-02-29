import 'package:json_annotation/json_annotation.dart';

part 'row.g.dart';

@JsonSerializable()
class Row {
  final String? productMintId;
  final String? productCode;
  final int? price;
  final int? status;
  final String? statusStr;
  final int? synthesisStatus;
  final int? holdDaysNumber;
  final String? issueNumber;
  final int? isBoxPrize;

  const Row({
    this.productMintId,
    this.productCode,
    this.price,
    this.status,
    this.statusStr,
    this.synthesisStatus,
    this.holdDaysNumber,
    this.issueNumber,
    this.isBoxPrize,
  });

  @override
  String toString() {
    return 'Row(productMintId: $productMintId, productCode: $productCode, price: $price, status: $status, statusStr: $statusStr, synthesisStatus: $synthesisStatus, holdDaysNumber: $holdDaysNumber, issueNumber: $issueNumber, isBoxPrize: $isBoxPrize)';
  }

  factory Row.fromJson(Map<String, dynamic> json) => _$RowFromJson(json);

  Map<String, dynamic> toJson() => _$RowToJson(this);

  Row copyWith({
    String? productMintId,
    String? productCode,
    int? price,
    int? status,
    String? statusStr,
    int? synthesisStatus,
    int? holdDaysNumber,
    String? issueNumber,
    int? isBoxPrize,
  }) {
    return Row(
      productMintId: productMintId ?? this.productMintId,
      productCode: productCode ?? this.productCode,
      price: price ?? this.price,
      status: status ?? this.status,
      statusStr: statusStr ?? this.statusStr,
      synthesisStatus: synthesisStatus ?? this.synthesisStatus,
      holdDaysNumber: holdDaysNumber ?? this.holdDaysNumber,
      issueNumber: issueNumber ?? this.issueNumber,
      isBoxPrize: isBoxPrize ?? this.isBoxPrize,
    );
  }
}
