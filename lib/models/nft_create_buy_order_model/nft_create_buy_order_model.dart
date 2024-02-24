import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'nft_create_buy_order_model.g.dart';

@JsonSerializable()
class NftCreateBuyOrderModel {
  final bool? success;
  final String? resultCode;
  final Data? data;
  final String? dateTime;

  const NftCreateBuyOrderModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  @override
  String toString() {
    return 'NftCreateBuyOrderModel(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory NftCreateBuyOrderModel.fromJson(Map<String, dynamic> json) {
    return _$NftCreateBuyOrderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NftCreateBuyOrderModelToJson(this);

  NftCreateBuyOrderModel copyWith({
    bool? success,
    String? resultCode,
    Data? data,
    String? dateTime,
  }) {
    return NftCreateBuyOrderModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
