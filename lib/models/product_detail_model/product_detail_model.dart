import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'product_detail_model.g.dart';

@JsonSerializable()
class ProductDetailModel {
  final bool? success;
  final String? resultCode;
  final Data? data;
  final String? dateTime;

  const ProductDetailModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  @override
  String toString() {
    return 'ProductDetailModel(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory ProductDetailModel.fromJson(Map<String, dynamic> json) {
    return _$ProductDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductDetailModelToJson(this);

  ProductDetailModel copyWith({
    bool? success,
    String? resultCode,
    Data? data,
    String? dateTime,
  }) {
    return ProductDetailModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
