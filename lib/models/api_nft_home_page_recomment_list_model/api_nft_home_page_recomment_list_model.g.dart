// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_nft_home_page_recomment_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiNftHomePageRecommentListModel _$ApiNftHomePageRecommentListModelFromJson(
        Map<String, dynamic> json) =>
    ApiNftHomePageRecommentListModel(
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => Row.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ApiNftHomePageRecommentListModelToJson(
        ApiNftHomePageRecommentListModel instance) =>
    <String, dynamic>{
      'rows': instance.rows,
      'total': instance.total,
    };
