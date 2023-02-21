// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Creator _$CreatorFromJson(Map<String, dynamic> json) => Creator(
      id: json['id'] as String,
      name: json['name'] as String,
      username: json['username'] as String,
      profilePhoto: json['profilePhoto'] as String,
      isVerified: json['isVerified'] as bool,
      professions: (json['professions'] as List<dynamic>)
          .map((e) => Profession.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..meetings = (json['meetings'] as List<dynamic>?)
        ?.map((e) => Meeting.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$CreatorToJson(Creator instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'profilePhoto': instance.profilePhoto,
      'isVerified': instance.isVerified,
      'professions': instance.professions.map((e) => e.toJson()).toList(),
      'meetings': instance.meetings?.map((e) => e.toJson()).toList(),
    };
