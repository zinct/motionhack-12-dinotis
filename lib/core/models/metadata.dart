import 'package:json_annotation/json_annotation.dart';

part 'metadata.g.dart';

@JsonSerializable(explicitToJson: true)
class Metadata {
  Metadata({
    required this.page,
    required this.size,
    required this.total,
    required this.totalPage,
  });

  int page;
  int size;
  int total;
  int totalPage;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
  Map<String, dynamic> toJson() => _$MetadataToJson(this);
}
