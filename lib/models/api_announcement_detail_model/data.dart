import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final int? current;
  final int? rows;
  final String? id;
  final String? createDate;
  final String? updateDate;
  final String? createBy;
  final String? updateBy;
  final bool? delFlag;
  final String? type;
  final dynamic typeName;
  final int? sendUserType;
  final dynamic exhibitionId;
  final dynamic rankUserId;
  final String? title;
  final String? content;
  final dynamic pageType;
  final dynamic appletUrl;
  final String? redirectUrl;
  final int? clickCount;
  final int? state;
  final int? publishWay;
  final dynamic autoPublishTime;
  final String? publishTime;
  final String? publishBy;
  final String? imgUrl;
  final int? isSyncGroup;
  final String? productIds;
  final dynamic activityIds;
  final int? activityType;
  final int? isBounceWindow;
  final int? isPushNotice;
  final int? pushUserType;
  final String? holdProductId;
  final String? pushTitle;
  final String? pushContent;
  final int? isSendResaleSms;
  final String? resaleHoldProductId;
  final dynamic productList;
  final dynamic activityList;
  final dynamic userId;
  final dynamic exhibitionName;
  final int? readFlag;
  final dynamic searchParam;

  const Data({
    this.current,
    this.rows,
    this.id,
    this.createDate,
    this.updateDate,
    this.createBy,
    this.updateBy,
    this.delFlag,
    this.type,
    this.typeName,
    this.sendUserType,
    this.exhibitionId,
    this.rankUserId,
    this.title,
    this.content,
    this.pageType,
    this.appletUrl,
    this.redirectUrl,
    this.clickCount,
    this.state,
    this.publishWay,
    this.autoPublishTime,
    this.publishTime,
    this.publishBy,
    this.imgUrl,
    this.isSyncGroup,
    this.productIds,
    this.activityIds,
    this.activityType,
    this.isBounceWindow,
    this.isPushNotice,
    this.pushUserType,
    this.holdProductId,
    this.pushTitle,
    this.pushContent,
    this.isSendResaleSms,
    this.resaleHoldProductId,
    this.productList,
    this.activityList,
    this.userId,
    this.exhibitionName,
    this.readFlag,
    this.searchParam,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    int? current,
    int? rows,
    String? id,
    String? createDate,
    String? updateDate,
    String? createBy,
    String? updateBy,
    bool? delFlag,
    String? type,
    dynamic typeName,
    int? sendUserType,
    dynamic exhibitionId,
    dynamic rankUserId,
    String? title,
    String? content,
    dynamic pageType,
    dynamic appletUrl,
    String? redirectUrl,
    int? clickCount,
    int? state,
    int? publishWay,
    dynamic autoPublishTime,
    String? publishTime,
    String? publishBy,
    String? imgUrl,
    int? isSyncGroup,
    String? productIds,
    dynamic activityIds,
    int? activityType,
    int? isBounceWindow,
    int? isPushNotice,
    int? pushUserType,
    String? holdProductId,
    String? pushTitle,
    String? pushContent,
    int? isSendResaleSms,
    String? resaleHoldProductId,
    dynamic productList,
    dynamic activityList,
    dynamic userId,
    dynamic exhibitionName,
    int? readFlag,
    dynamic searchParam,
  }) {
    return Data(
      current: current ?? this.current,
      rows: rows ?? this.rows,
      id: id ?? this.id,
      createDate: createDate ?? this.createDate,
      updateDate: updateDate ?? this.updateDate,
      createBy: createBy ?? this.createBy,
      updateBy: updateBy ?? this.updateBy,
      delFlag: delFlag ?? this.delFlag,
      type: type ?? this.type,
      typeName: typeName ?? this.typeName,
      sendUserType: sendUserType ?? this.sendUserType,
      exhibitionId: exhibitionId ?? this.exhibitionId,
      rankUserId: rankUserId ?? this.rankUserId,
      title: title ?? this.title,
      content: content ?? this.content,
      pageType: pageType ?? this.pageType,
      appletUrl: appletUrl ?? this.appletUrl,
      redirectUrl: redirectUrl ?? this.redirectUrl,
      clickCount: clickCount ?? this.clickCount,
      state: state ?? this.state,
      publishWay: publishWay ?? this.publishWay,
      autoPublishTime: autoPublishTime ?? this.autoPublishTime,
      publishTime: publishTime ?? this.publishTime,
      publishBy: publishBy ?? this.publishBy,
      imgUrl: imgUrl ?? this.imgUrl,
      isSyncGroup: isSyncGroup ?? this.isSyncGroup,
      productIds: productIds ?? this.productIds,
      activityIds: activityIds ?? this.activityIds,
      activityType: activityType ?? this.activityType,
      isBounceWindow: isBounceWindow ?? this.isBounceWindow,
      isPushNotice: isPushNotice ?? this.isPushNotice,
      pushUserType: pushUserType ?? this.pushUserType,
      holdProductId: holdProductId ?? this.holdProductId,
      pushTitle: pushTitle ?? this.pushTitle,
      pushContent: pushContent ?? this.pushContent,
      isSendResaleSms: isSendResaleSms ?? this.isSendResaleSms,
      resaleHoldProductId: resaleHoldProductId ?? this.resaleHoldProductId,
      productList: productList ?? this.productList,
      activityList: activityList ?? this.activityList,
      userId: userId ?? this.userId,
      exhibitionName: exhibitionName ?? this.exhibitionName,
      readFlag: readFlag ?? this.readFlag,
      searchParam: searchParam ?? this.searchParam,
    );
  }
}
