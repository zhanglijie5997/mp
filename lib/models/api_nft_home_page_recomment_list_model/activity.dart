import 'package:json_annotation/json_annotation.dart';

part 'activity.g.dart';

@JsonSerializable()
class Activity {
  final int? current;
  final int? rows;
  final String? id;
  final String? createDate;
  final String? updateDate;
  final String? createBy;
  final String? updateBy;
  final bool? delFlag;
  final int? activityType;
  final String? name;
  final String? image;
  final String? productId;
  final String? startTime;
  final String? endTime;
  final double? price;
  final int? number;
  final int? status;
  final bool? shelfStatus;
  final int? isDisplay;
  final int? doorsill;
  final dynamic doorsillRule;
  final int? isRemain;
  final dynamic reStartTime;
  final dynamic reEndTime;
  final dynamic reDoorsill;
  final dynamic reDoorsillRule;
  final int? reStatus;
  final int? purchaseNumberMax;
  final int? singlePurchaseNumberMax;
  final bool? shelfFlag;
  final bool? destroyStatus;
  final dynamic nftProductName;
  final dynamic productImage;
  final dynamic productCover;
  final dynamic productMintNumber;
  final dynamic circulateNumber;
  final dynamic transactionNumber;
  final dynamic notOpenNumber;
  final dynamic productPrice;
  final dynamic productCreatorId;
  final dynamic productCreatorNickName;
  final dynamic productCreatorAvatar;
  final dynamic productCreatorIntroduce;
  final dynamic brandPartyName;
  final dynamic brandPartyIntroduce;
  final dynamic supervisorName;
  final dynamic supervisorIntroduce;
  final dynamic activityBuyNum;
  final dynamic type;
  final dynamic isBoxPrize;

  const Activity({
    this.current,
    this.rows,
    this.id,
    this.createDate,
    this.updateDate,
    this.createBy,
    this.updateBy,
    this.delFlag,
    this.activityType,
    this.name,
    this.image,
    this.productId,
    this.startTime,
    this.endTime,
    this.price,
    this.number,
    this.status,
    this.shelfStatus,
    this.isDisplay,
    this.doorsill,
    this.doorsillRule,
    this.isRemain,
    this.reStartTime,
    this.reEndTime,
    this.reDoorsill,
    this.reDoorsillRule,
    this.reStatus,
    this.purchaseNumberMax,
    this.singlePurchaseNumberMax,
    this.shelfFlag,
    this.destroyStatus,
    this.nftProductName,
    this.productImage,
    this.productCover,
    this.productMintNumber,
    this.circulateNumber,
    this.transactionNumber,
    this.notOpenNumber,
    this.productPrice,
    this.productCreatorId,
    this.productCreatorNickName,
    this.productCreatorAvatar,
    this.productCreatorIntroduce,
    this.brandPartyName,
    this.brandPartyIntroduce,
    this.supervisorName,
    this.supervisorIntroduce,
    this.activityBuyNum,
    this.type,
    this.isBoxPrize,
  });

  @override
  String toString() {
    return 'Activity(current: $current, rows: $rows, id: $id, createDate: $createDate, updateDate: $updateDate, createBy: $createBy, updateBy: $updateBy, delFlag: $delFlag, activityType: $activityType, name: $name, image: $image, productId: $productId, startTime: $startTime, endTime: $endTime, price: $price, number: $number, status: $status, shelfStatus: $shelfStatus, isDisplay: $isDisplay, doorsill: $doorsill, doorsillRule: $doorsillRule, isRemain: $isRemain, reStartTime: $reStartTime, reEndTime: $reEndTime, reDoorsill: $reDoorsill, reDoorsillRule: $reDoorsillRule, reStatus: $reStatus, purchaseNumberMax: $purchaseNumberMax, singlePurchaseNumberMax: $singlePurchaseNumberMax, shelfFlag: $shelfFlag, destroyStatus: $destroyStatus, nftProductName: $nftProductName, productImage: $productImage, productCover: $productCover, productMintNumber: $productMintNumber, circulateNumber: $circulateNumber, transactionNumber: $transactionNumber, notOpenNumber: $notOpenNumber, productPrice: $productPrice, productCreatorId: $productCreatorId, productCreatorNickName: $productCreatorNickName, productCreatorAvatar: $productCreatorAvatar, productCreatorIntroduce: $productCreatorIntroduce, brandPartyName: $brandPartyName, brandPartyIntroduce: $brandPartyIntroduce, supervisorName: $supervisorName, supervisorIntroduce: $supervisorIntroduce, activityBuyNum: $activityBuyNum, type: $type, isBoxPrize: $isBoxPrize)';
  }

  factory Activity.fromJson(Map<String, dynamic> json) {
    return _$ActivityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ActivityToJson(this);

  Activity copyWith({
    int? current,
    int? rows,
    String? id,
    String? createDate,
    String? updateDate,
    String? createBy,
    String? updateBy,
    bool? delFlag,
    int? activityType,
    String? name,
    String? image,
    String? productId,
    String? startTime,
    String? endTime,
    double? price,
    int? number,
    int? status,
    bool? shelfStatus,
    int? isDisplay,
    int? doorsill,
    dynamic doorsillRule,
    int? isRemain,
    dynamic reStartTime,
    dynamic reEndTime,
    dynamic reDoorsill,
    dynamic reDoorsillRule,
    int? reStatus,
    int? purchaseNumberMax,
    int? singlePurchaseNumberMax,
    bool? shelfFlag,
    bool? destroyStatus,
    dynamic nftProductName,
    dynamic productImage,
    dynamic productCover,
    dynamic productMintNumber,
    dynamic circulateNumber,
    dynamic transactionNumber,
    dynamic notOpenNumber,
    dynamic productPrice,
    dynamic productCreatorId,
    dynamic productCreatorNickName,
    dynamic productCreatorAvatar,
    dynamic productCreatorIntroduce,
    dynamic brandPartyName,
    dynamic brandPartyIntroduce,
    dynamic supervisorName,
    dynamic supervisorIntroduce,
    dynamic activityBuyNum,
    dynamic type,
    dynamic isBoxPrize,
  }) {
    return Activity(
      current: current ?? this.current,
      rows: rows ?? this.rows,
      id: id ?? this.id,
      createDate: createDate ?? this.createDate,
      updateDate: updateDate ?? this.updateDate,
      createBy: createBy ?? this.createBy,
      updateBy: updateBy ?? this.updateBy,
      delFlag: delFlag ?? this.delFlag,
      activityType: activityType ?? this.activityType,
      name: name ?? this.name,
      image: image ?? this.image,
      productId: productId ?? this.productId,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      price: price ?? this.price,
      number: number ?? this.number,
      status: status ?? this.status,
      shelfStatus: shelfStatus ?? this.shelfStatus,
      isDisplay: isDisplay ?? this.isDisplay,
      doorsill: doorsill ?? this.doorsill,
      doorsillRule: doorsillRule ?? this.doorsillRule,
      isRemain: isRemain ?? this.isRemain,
      reStartTime: reStartTime ?? this.reStartTime,
      reEndTime: reEndTime ?? this.reEndTime,
      reDoorsill: reDoorsill ?? this.reDoorsill,
      reDoorsillRule: reDoorsillRule ?? this.reDoorsillRule,
      reStatus: reStatus ?? this.reStatus,
      purchaseNumberMax: purchaseNumberMax ?? this.purchaseNumberMax,
      singlePurchaseNumberMax:
          singlePurchaseNumberMax ?? this.singlePurchaseNumberMax,
      shelfFlag: shelfFlag ?? this.shelfFlag,
      destroyStatus: destroyStatus ?? this.destroyStatus,
      nftProductName: nftProductName ?? this.nftProductName,
      productImage: productImage ?? this.productImage,
      productCover: productCover ?? this.productCover,
      productMintNumber: productMintNumber ?? this.productMintNumber,
      circulateNumber: circulateNumber ?? this.circulateNumber,
      transactionNumber: transactionNumber ?? this.transactionNumber,
      notOpenNumber: notOpenNumber ?? this.notOpenNumber,
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
      activityBuyNum: activityBuyNum ?? this.activityBuyNum,
      type: type ?? this.type,
      isBoxPrize: isBoxPrize ?? this.isBoxPrize,
    );
  }
}
