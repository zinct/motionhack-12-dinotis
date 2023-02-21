// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatorDetailModel _$CreatorDetailModelFromJson(Map<String, dynamic> json) =>
    CreatorDetailModel(
      creator: Creator.fromJson(json['creator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreatorDetailModelToJson(CreatorDetailModel instance) =>
    <String, dynamic>{
      'creator': instance.creator.toJson(),
    };
