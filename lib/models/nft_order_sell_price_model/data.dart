import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final double? maxPrice;
  final int? feeRatio;
  final double? minPrice;
  final int? buyAmount;
  final int? floorPrice;
  final int? batchMaxConsignNum;
  final int? userHoldNum;

  const Data({
    this.maxPrice,
    this.feeRatio,
    this.minPrice,
    this.buyAmount,
    this.floorPrice,
    this.batchMaxConsignNum,
    this.userHoldNum,
  });

  @override
  String toString() {
    return 'Data(maxPrice: $maxPrice, feeRatio: $feeRatio, minPrice: $minPrice, buyAmount: $buyAmount, floorPrice: $floorPrice, batchMaxConsignNum: $batchMaxConsignNum, userHoldNum: $userHoldNum)';
  }

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    double? maxPrice,
    int? feeRatio,
    double? minPrice,
    int? buyAmount,
    int? floorPrice,
    int? batchMaxConsignNum,
    int? userHoldNum,
  }) {
    return Data(
      maxPrice: maxPrice ?? this.maxPrice,
      feeRatio: feeRatio ?? this.feeRatio,
      minPrice: minPrice ?? this.minPrice,
      buyAmount: buyAmount ?? this.buyAmount,
      floorPrice: floorPrice ?? this.floorPrice,
      batchMaxConsignNum: batchMaxConsignNum ?? this.batchMaxConsignNum,
      userHoldNum: userHoldNum ?? this.userHoldNum,
    );
  }
}
