// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Row _$RowFromJson(Map<String, dynamic> json) => Row(
      current: json['current'] as int?,
      rows: json['rows'] as int?,
      id: json['id'] as String?,
      createDate: json['createDate'] as String?,
      updateDate: json['updateDate'] as String?,
      createBy: json['createBy'] as String?,
      updateBy: json['updateBy'] as String?,
      delFlag: json['delFlag'] as bool?,
      nftProductId: json['nftProductId'] as String?,
      position: json['position'] as int?,
      isRecommend: json['isRecommend'] as int?,
      recommendDate: json['recommendDate'],
      sortInt: json['sortInt'] as int?,
      remark: json['remark'] as String?,
      productName: json['productName'] as String?,
      productImage: json['productImage'] as String?,
      productCover: json['productCover'] as String?,
      productMintNumber: json['productMintNumber'] as int?,
      circulateNumber: json['circulateNumber'] as int?,
      productPrice: (json['productPrice'] as num?)?.toDouble(),
      productCreatorId: json['productCreatorId'] as String?,
      productCreatorNickName: json['productCreatorNickName'] as String?,
      productCreatorAvatar: json['productCreatorAvatar'] as String?,
      productCreatorIntroduce: json['productCreatorIntroduce'],
      brandPartyName: json['brandPartyName'],
      brandPartyIntroduce: json['brandPartyIntroduce'],
      supervisorName: json['supervisorName'],
      supervisorIntroduce: json['supervisorIntroduce'],
      isTransfer: json['isTransfer'] as int?,
      activity: json['activity'] == null
          ? null
          : Activity.fromJson(json['activity'] as Map<String, dynamic>),
      tagImage: json['tagImage'],
    );

Map<String, dynamic> _$RowToJson(Row instance) => <String, dynamic>{
      'current': instance.current,
      'rows': instance.rows,
      'id': instance.id,
      'createDate': instance.createDate,
      'updateDate': instance.updateDate,
      'createBy': instance.createBy,
      'updateBy': instance.updateBy,
      'delFlag': instance.delFlag,
      'nftProductId': instance.nftProductId,
      'position': instance.position,
      'isRecommend': instance.isRecommend,
      'recommendDate': instance.recommendDate,
      'sortInt': instance.sortInt,
      'remark': instance.remark,
      'productName': instance.productName,
      'productImage': instance.productImage,
      'productCover': instance.productCover,
      'productMintNumber': instance.productMintNumber,
      'circulateNumber': instance.circulateNumber,
      'productPrice': instance.productPrice,
      'productCreatorId': instance.productCreatorId,
      'productCreatorNickName': instance.productCreatorNickName,
      'productCreatorAvatar': instance.productCreatorAvatar,
      'productCreatorIntroduce': instance.productCreatorIntroduce,
      'brandPartyName': instance.brandPartyName,
      'brandPartyIntroduce': instance.brandPartyIntroduce,
      'supervisorName': instance.supervisorName,
      'supervisorIntroduce': instance.supervisorIntroduce,
      'isTransfer': instance.isTransfer,
      'activity': instance.activity,
      'tagImage': instance.tagImage,
    };
