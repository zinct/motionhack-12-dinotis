// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatorListModel _$CreatorListModelFromJson(Map<String, dynamic> json) =>
    CreatorListModel(
      metadata: Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      creators: (json['creators'] as List<dynamic>)
          .map((e) => Creator.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreatorListModelToJson(CreatorListModel instance) =>
    <String, dynamic>{
      'metadata': instance.metadata.toJson(),
      'creators': instance.creators.map((e) => e.toJson()).toList(),
    };
