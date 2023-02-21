// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      username: json['username'] as String,
      profilePhoto: json['profilePhoto'] as String,
      isVerified: json['isVerified'] as bool,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'username': instance.username,
      'profilePhoto': instance.profilePhoto,
      'isVerified': instance.isVerified,
    };
