import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'api_announcement_detail_model.g.dart';

@JsonSerializable()
class ApiAnnouncementDetailModel {
  final bool? success;
  final String? resultCode;
  final Data? data;
  final String? dateTime;

  const ApiAnnouncementDetailModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  factory ApiAnnouncementDetailModel.fromJson(Map<String, dynamic> json) {
    return _$ApiAnnouncementDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiAnnouncementDetailModelToJson(this);

  ApiAnnouncementDetailModel copyWith({
    bool? success,
    String? resultCode,
    Data? data,
    String? dateTime,
  }) {
    return ApiAnnouncementDetailModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
