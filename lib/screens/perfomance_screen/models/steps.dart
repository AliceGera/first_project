import 'package:json_annotation/json_annotation.dart';

part 'steps.g.dart';

@JsonSerializable(explicitToJson: true)
class Steps {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'image')
  final String? image;

  @JsonKey(name: 'mission_id')
  final int? missionId;

  Steps(
      this.id,
      this.title,
      this.description,
      this.image,
      this.missionId,
      );

  factory Steps.fromJson(Map<String, dynamic> json) => _$StepsFromJson(json);

  Map<String, dynamic> toJson() => _$StepsToJson(this);
}
