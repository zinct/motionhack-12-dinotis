// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeetingListModel _$MeetingListModelFromJson(Map<String, dynamic> json) =>
    MeetingListModel(
      metadata: Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      meetings: (json['meetings'] as List<dynamic>)
          .map((e) => Meeting.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MeetingListModelToJson(MeetingListModel instance) =>
    <String, dynamic>{
      'metadata': instance.metadata.toJson(),
      'meetings': instance.meetings.map((e) => e.toJson()).toList(),
    };
