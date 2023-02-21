import 'package:json_annotation/json_annotation.dart';
import 'package:motionhack/features/user/entities/user.dart';

part 'user_detail_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserDetailModel {
  UserDetailModel({
    required this.user,
  });

  User user;

  factory UserDetailModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserDetailModelToJson(this);
}
