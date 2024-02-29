import 'package:json_annotation/json_annotation.dart';

import 'activity.dart';

part 'row.g.dart';

@JsonSerializable()
class Row {
  final int? current;
  final int? rows;
  final String? id;
  final String? createDate;
  final String? updateDate;
  final String? createBy;
  final String? updateBy;
  final bool? delFlag;
  final String? nftProductId;
  final int? position;
  final int? isRecommend;
  final dynamic recommendDate;
  final int? sortInt;
  final String? remark;
  final String? productName;
  final String? productImage;
  final String? productCover;
  final int? productMintNumber;
  final int? circulateNumber;
  final double? productPrice;
  final String? productCreatorId;
  final String? productCreatorNickName;
  final String? productCreatorAvatar;
  final dynamic productCreatorIntroduce;
  final dynamic brandPartyName;
  final dynamic brandPartyIntroduce;
  final dynamic supervisorName;
  final dynamic supervisorIntroduce;
  final int? isTransfer;
  final Activity? activity;
  final dynamic tagImage;

  const Row({
    this.current,
    this.rows,
    this.id,
    this.createDate,
    this.updateDate,
    this.createBy,
    this.updateBy,
    this.delFlag,
    this.nftProductId,
    this.position,
    this.isRecommend,
    this.recommendDate,
    this.sortInt,
    this.remark,
    this.productName,
    this.productImage,
    this.productCover,
    this.productMintNumber,
    this.circulateNumber,
    this.productPrice,
    this.productCreatorId,
    this.productCreatorNickName,
    this.productCreatorAvatar,
    this.productCreatorIntroduce,
    this.brandPartyName,
    this.brandPartyIntroduce,
    this.supervisorName,
    this.supervisorIntroduce,
    this.isTransfer,
    this.activity,
    this.tagImage,
  });

  @override
  String toString() {
    return 'Row(current: $current, rows: $rows, id: $id, createDate: $createDate, updateDate: $updateDate, createBy: $createBy, updateBy: $updateBy, delFlag: $delFlag, nftProductId: $nftProductId, position: $position, isRecommend: $isRecommend, recommendDate: $recommendDate, sortInt: $sortInt, remark: $remark, productName: $productName, productImage: $productImage, productCover: $productCover, productMintNumber: $productMintNumber, circulateNumber: $circulateNumber, productPrice: $productPrice, productCreatorId: $productCreatorId, productCreatorNickName: $productCreatorNickName, productCreatorAvatar: $productCreatorAvatar, productCreatorIntroduce: $productCreatorIntroduce, brandPartyName: $brandPartyName, brandPartyIntroduce: $brandPartyIntroduce, supervisorName: $supervisorName, supervisorIntroduce: $supervisorIntroduce, isTransfer: $isTransfer, activity: $activity, tagImage: $tagImage)';
  }

  factory Row.fromJson(Map<String, dynamic> json) => _$RowFromJson(json);

  Map<String, dynamic> toJson() => _$RowToJson(this);

  Row copyWith({
    int? current,
    int? rows,
    String? id,
    String? createDate,
    String? updateDate,
    String? createBy,
    String? updateBy,
    bool? delFlag,
    String? nftProductId,
    int? position,
    int? isRecommend,
    dynamic recommendDate,
    int? sortInt,
    String? remark,
    String? productName,
    String? productImage,
    String? productCover,
    int? productMintNumber,
    int? circulateNumber,
    double? productPrice,
    String? productCreatorId,
    String? productCreatorNickName,
    String? productCreatorAvatar,
    dynamic productCreatorIntroduce,
    dynamic brandPartyName,
    dynamic brandPartyIntroduce,
    dynamic supervisorName,
    dynamic supervisorIntroduce,
    int? isTransfer,
    Activity? activity,
    dynamic tagImage,
  }) {
    return Row(
      current: current ?? this.current,
      rows: rows ?? this.rows,
      id: id ?? this.id,
      createDate: createDate ?? this.createDate,
      updateDate: updateDate ?? this.updateDate,
      createBy: createBy ?? this.createBy,
      updateBy: updateBy ?? this.updateBy,
      delFlag: delFlag ?? this.delFlag,
      nftProductId: nftProductId ?? this.nftProductId,
      position: position ?? this.position,
      isRecommend: isRecommend ?? this.isRecommend,
      recommendDate: recommendDate ?? this.recommendDate,
      sortInt: sortInt ?? this.sortInt,
      remark: remark ?? this.remark,
      productName: productName ?? this.productName,
      productImage: productImage ?? this.productImage,
      productCover: productCover ?? this.productCover,
      productMintNumber: productMintNumber ?? this.productMintNumber,
      circulateNumber: circulateNumber ?? this.circulateNumber,
      productPrice: productPrice ?? this.productPrice,
      productCreatorId: productCreatorId ?? this.productCreatorId,
      productCreatorNickName:
          productCreatorNickName ?? this.productCreatorNickName,
      productCreatorAvatar: productCreatorAvatar ?? this.productCreatorAvatar,
      productCreatorIntroduce:
          productCreatorIntroduce ?? this.productCreatorIntroduce,
      brandPartyName: brandPartyName ?? this.brandPartyName,
      brandPartyIntroduce: brandPartyIntroduce ?? this.brandPartyIntroduce,
      supervisorName: supervisorName ?? this.supervisorName,
      supervisorIntroduce: supervisorIntroduce ?? this.supervisorIntroduce,
      isTransfer: isTransfer ?? this.isTransfer,
      activity: activity ?? this.activity,
      tagImage: tagImage ?? this.tagImage,
    );
  }
}
