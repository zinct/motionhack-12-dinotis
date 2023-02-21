import 'package:json_annotation/json_annotation.dart';
import 'package:motionhack/core/models/metadata.dart';
import 'package:motionhack/features/meeting/entities/meeting.dart';

part 'meeting_list_model.g.dart';

@JsonSerializable(explicitToJson: true)
class MeetingListModel {
  MeetingListModel({
    required this.metadata,
    required this.meetings,
  });

  Metadata metadata;
  List<Meeting> meetings;

  factory MeetingListModel.fromJson(Map<String, dynamic> json) =>
      _$MeetingListModelFromJson(json);
  Map<String, dynamic> toJson() => _$MeetingListModelToJson(this);
}
