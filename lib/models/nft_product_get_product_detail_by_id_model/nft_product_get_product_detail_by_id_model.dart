import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'nft_product_get_product_detail_by_id_model.g.dart';

@JsonSerializable()
class NftProductGetProductDetailByIdModel {
  final bool? success;
  final String? resultCode;
  final Data? data;
  final String? dateTime;

  const NftProductGetProductDetailByIdModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  @override
  String toString() {
    return 'NftProductGetProductDetailByIdModel(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory NftProductGetProductDetailByIdModel.fromJson(
      Map<String, dynamic> json) {
    return _$NftProductGetProductDetailByIdModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$NftProductGetProductDetailByIdModelToJson(this);
  }

  NftProductGetProductDetailByIdModel copyWith({
    bool? success,
    String? resultCode,
    Data? data,
    String? dateTime,
  }) {
    return NftProductGetProductDetailByIdModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
