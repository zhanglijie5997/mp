import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'nft_order_sell_price_model.g.dart';

@JsonSerializable()
class NftOrderSellPriceModel {
  final bool? success;
  final String? resultCode;
  final Data? data;
  final String? dateTime;

  const NftOrderSellPriceModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  @override
  String toString() {
    return 'NftOrderSellPriceModel(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory NftOrderSellPriceModel.fromJson(Map<String, dynamic> json) {
    return _$NftOrderSellPriceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NftOrderSellPriceModelToJson(this);

  NftOrderSellPriceModel copyWith({
    bool? success,
    String? resultCode,
    Data? data,
    String? dateTime,
  }) {
    return NftOrderSellPriceModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
