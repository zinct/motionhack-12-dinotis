import 'package:json_annotation/json_annotation.dart';
import 'package:motionhack/features/meeting/entities/meeting.dart';
import 'package:motionhack/features/profession/entities/profession.dart';

part 'creator.g.dart';

@JsonSerializable(explicitToJson: true)
class Creator {
  Creator({
    required this.id,
    required this.name,
    required this.username,
    required this.profilePhoto,
    required this.isVerified,
    required this.professions,
  });

  String id;
  String name;
  String username;
  String profilePhoto;
  bool isVerified;
  List<Profession> professions;
  List<Meeting>? meetings;

  factory Creator.fromJson(Map<String, dynamic> json) =>
      _$CreatorFromJson(json);
  Map<String, dynamic> toJson() => _$CreatorToJson(this);
}
