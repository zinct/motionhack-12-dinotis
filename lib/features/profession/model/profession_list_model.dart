import 'package:json_annotation/json_annotation.dart';
import 'package:motionhack/core/models/metadata.dart';
import 'package:motionhack/features/profession/entities/profession.dart';

part 'profession_list_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProfessionListModel {
  ProfessionListModel({
    required this.metadata,
    required this.professions,
  });

  Metadata metadata;
  List<Profession> professions;

  factory ProfessionListModel.fromJson(Map<String, dynamic> json) =>
      _$ProfessionListModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProfessionListModelToJson(this);
}
