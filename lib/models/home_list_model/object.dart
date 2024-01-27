import 'package:json_annotation/json_annotation.dart';

part 'object.g.dart';

@JsonSerializable()
class Object {
  final int? isNeedInviteCode;
  final int? isHideOneKeyLogin;
  final int? isOpenMaxRegLimit;
  final int? maxRegLimitCount;
  final int? validInviteCodeCount;

  const Object({
    this.isNeedInviteCode,
    this.isHideOneKeyLogin,
    this.isOpenMaxRegLimit,
    this.maxRegLimitCount,
    this.validInviteCodeCount,
  });

  @override
  String toString() {
    return 'Object(isNeedInviteCode: $isNeedInviteCode, isHideOneKeyLogin: $isHideOneKeyLogin, isOpenMaxRegLimit: $isOpenMaxRegLimit, maxRegLimitCount: $maxRegLimitCount, validInviteCodeCount: $validInviteCodeCount)';
  }

  factory Object.fromJson(Map<String, dynamic> json) {
    return _$ObjectFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ObjectToJson(this);

  Object copyWith({
    int? isNeedInviteCode,
    int? isHideOneKeyLogin,
    int? isOpenMaxRegLimit,
    int? maxRegLimitCount,
    int? validInviteCodeCount,
  }) {
    return Object(
      isNeedInviteCode: isNeedInviteCode ?? this.isNeedInviteCode,
      isHideOneKeyLogin: isHideOneKeyLogin ?? this.isHideOneKeyLogin,
      isOpenMaxRegLimit: isOpenMaxRegLimit ?? this.isOpenMaxRegLimit,
      maxRegLimitCount: maxRegLimitCount ?? this.maxRegLimitCount,
      validInviteCodeCount: validInviteCodeCount ?? this.validInviteCodeCount,
    );
  }
}
