import 'package:json_annotation/json_annotation.dart';

part 'dynamic_image.g.dart';

@JsonSerializable()
class DynamicImage {
  final int? current;
  final int? rows;
  final String? id;
  final String? createDate;
  final String? updateDate;
  final String? createBy;
  final String? updateBy;
  final bool? delFlag;
  final String? name;
  final String? backdropImage;
  final String? coverImage;
  final String? dynamicImage;
  final int? duration;
  final String? topFrame;
  final List<dynamic>? courseFrame;
  final int? breadth;
  final int? altitude;
  final List<dynamic>? courseFrames;
  final String? lastFrame;

  const DynamicImage({
    this.current,
    this.rows,
    this.id,
    this.createDate,
    this.updateDate,
    this.createBy,
    this.updateBy,
    this.delFlag,
    this.name,
    this.backdropImage,
    this.coverImage,
    this.dynamicImage,
    this.duration,
    this.topFrame,
    this.courseFrame,
    this.breadth,
    this.altitude,
    this.courseFrames,
    this.lastFrame,
  });

  @override
  String toString() {
    return 'DynamicImage(current: $current, rows: $rows, id: $id, createDate: $createDate, updateDate: $updateDate, createBy: $createBy, updateBy: $updateBy, delFlag: $delFlag, name: $name, backdropImage: $backdropImage, coverImage: $coverImage, dynamicImage: $dynamicImage, duration: $duration, topFrame: $topFrame, courseFrame: $courseFrame, breadth: $breadth, altitude: $altitude, courseFrames: $courseFrames, lastFrame: $lastFrame)';
  }

  factory DynamicImage.fromJson(Map<String, dynamic> json) {
    return _$DynamicImageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DynamicImageToJson(this);

  DynamicImage copyWith({
    int? current,
    int? rows,
    String? id,
    String? createDate,
    String? updateDate,
    String? createBy,
    String? updateBy,
    bool? delFlag,
    String? name,
    String? backdropImage,
    String? coverImage,
    String? dynamicImage,
    int? duration,
    String? topFrame,
    List<dynamic>? courseFrame,
    int? breadth,
    int? altitude,
    List<dynamic>? courseFrames,
    String? lastFrame,
  }) {
    return DynamicImage(
      current: current ?? this.current,
      rows: rows ?? this.rows,
      id: id ?? this.id,
      createDate: createDate ?? this.createDate,
      updateDate: updateDate ?? this.updateDate,
      createBy: createBy ?? this.createBy,
      updateBy: updateBy ?? this.updateBy,
      delFlag: delFlag ?? this.delFlag,
      name: name ?? this.name,
      backdropImage: backdropImage ?? this.backdropImage,
      coverImage: coverImage ?? this.coverImage,
      dynamicImage: dynamicImage ?? this.dynamicImage,
      duration: duration ?? this.duration,
      topFrame: topFrame ?? this.topFrame,
      courseFrame: courseFrame ?? this.courseFrame,
      breadth: breadth ?? this.breadth,
      altitude: altitude ?? this.altitude,
      courseFrames: courseFrames ?? this.courseFrames,
      lastFrame: lastFrame ?? this.lastFrame,
    );
  }
}
