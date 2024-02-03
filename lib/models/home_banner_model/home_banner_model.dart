import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'home_banner_model.g.dart';

@JsonSerializable()
class HomeBannerModel {
  final bool? success;
  final String? resultCode;
  final List<Datum>? data;
  final String? dateTime;

  const HomeBannerModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  @override
  String toString() {
    return 'HomeBannerModel(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory HomeBannerModel.fromJson(Map<String, dynamic> json) {
    return _$HomeBannerModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeBannerModelToJson(this);

  HomeBannerModel copyWith({
    bool? success,
    String? resultCode,
    List<Datum>? data,
    String? dateTime,
  }) {
    return HomeBannerModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
