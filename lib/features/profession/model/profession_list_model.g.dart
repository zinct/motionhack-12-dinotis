// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profession_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfessionListModel _$ProfessionListModelFromJson(Map<String, dynamic> json) =>
    ProfessionListModel(
      metadata: Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      professions: (json['professions'] as List<dynamic>)
          .map((e) => Profession.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProfessionListModelToJson(
        ProfessionListModel instance) =>
    <String, dynamic>{
      'metadata': instance.metadata.toJson(),
      'professions': instance.professions.map((e) => e.toJson()).toList(),
    };
