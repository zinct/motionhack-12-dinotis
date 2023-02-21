import 'package:json_annotation/json_annotation.dart';

part 'profession.g.dart';

@JsonSerializable(explicitToJson: true)
class Profession {
  Profession({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory Profession.fromJson(Map<String, dynamic> json) =>
      _$ProfessionFromJson(json);
  Map<String, dynamic> toJson() => _$ProfessionToJson(this);
}
