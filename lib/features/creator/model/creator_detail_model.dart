import 'package:json_annotation/json_annotation.dart';
import 'package:motionhack/features/creator/entities/creator.dart';

part 'creator_detail_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CreatorDetailModel {
  CreatorDetailModel({
    required this.creator,
  });

  Creator creator;

  factory CreatorDetailModel.fromJson(Map<String, dynamic> json) =>
      _$CreatorDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$CreatorDetailModelToJson(this);
}
