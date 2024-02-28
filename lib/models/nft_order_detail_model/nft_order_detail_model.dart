import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'nft_order_detail_model.g.dart';

@JsonSerializable()
class NftOrderDetailModel {
  final bool? success;
  final String? resultCode;
  final Data? data;
  final String? dateTime;

  const NftOrderDetailModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  @override
  String toString() {
    return 'NftOrderDetailModel(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory NftOrderDetailModel.fromJson(Map<String, dynamic> json) {
    return _$NftOrderDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NftOrderDetailModelToJson(this);

  NftOrderDetailModel copyWith({
    bool? success,
    String? resultCode,
    Data? data,
    String? dateTime,
  }) {
    return NftOrderDetailModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
