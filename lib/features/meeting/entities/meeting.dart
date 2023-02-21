import 'package:json_annotation/json_annotation.dart';

part 'meeting.g.dart';

@JsonSerializable(explicitToJson: true)
class Meeting {
  Meeting({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.slots,
    required this.startAt,
    required this.endAt,
    required this.isPrivate,
    required this.creatorId,
  });

  String id;
  String title;
  String description;
  int price;
  int slots;
  DateTime startAt;
  DateTime endAt;
  bool isPrivate;
  String creatorId;

  factory Meeting.fromJson(Map<String, dynamic> json) =>
      _$MeetingFromJson(json);
  Map<String, dynamic> toJson() => _$MeetingToJson(this);
}
