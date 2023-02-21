import 'package:json_annotation/json_annotation.dart';
import 'package:motionhack/core/models/metadata.dart';
import 'package:motionhack/features/creator/entities/creator.dart';

part 'creator_list_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CreatorListModel {
  CreatorListModel({
    required this.metadata,
    required this.creators,
  });

  Metadata metadata;
  List<Creator> creators;

  factory CreatorListModel.fromJson(Map<String, dynamic> json) =>
      _$CreatorListModelFromJson(json);
  Map<String, dynamic> toJson() => _$CreatorListModelToJson(this);
}
