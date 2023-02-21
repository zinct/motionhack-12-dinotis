import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  User({
    required this.id,
    required this.name,
    required this.phone,
    required this.username,
    required this.profilePhoto,
    required this.isVerified,
  });

  String id;
  String name;
  String phone;
  String username;
  String profilePhoto;
  bool isVerified;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
