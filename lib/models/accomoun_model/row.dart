import 'package:json_annotation/json_annotation.dart';

part 'row.g.dart';

@JsonSerializable()
class Row {
  final String? id;
  final dynamic typeName;
  final String? title;
  final String? publishTime;
  final String? imgUrl;
  final int? readFlag;

  const Row({
    this.id,
    this.typeName,
    this.title,
    this.publishTime,
    this.imgUrl,
    this.readFlag,
  });

  @override
  String toString() {
    return 'Row(id: $id, typeName: $typeName, title: $title, publishTime: $publishTime, imgUrl: $imgUrl, readFlag: $readFlag)';
  }

  factory Row.fromJson(Map<String, dynamic> json) => _$RowFromJson(json);

  Map<String, dynamic> toJson() => _$RowToJson(this);

  Row copyWith({
    String? id,
    dynamic typeName,
    String? title,
    String? publishTime,
    String? imgUrl,
    int? readFlag,
  }) {
    return Row(
      id: id ?? this.id,
      typeName: typeName ?? this.typeName,
      title: title ?? this.title,
      publishTime: publishTime ?? this.publishTime,
      imgUrl: imgUrl ?? this.imgUrl,
      readFlag: readFlag ?? this.readFlag,
    );
  }
}
