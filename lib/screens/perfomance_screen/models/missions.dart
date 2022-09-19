import 'package:first_project/screens/perfomance_screen/models/steps.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:first_project/screens/perfomance_screen/models/planet.dart';

part 'missions.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Missions {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'lesson_id')
  final int? lessonId;
  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'achievement_type')
  final String? achievementType;
  @JsonKey(name: 'achievement_count')
  final int? achievementCount;
  @JsonKey(name: 'valuable_coins')
  final int? valuableCoins;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @JsonKey(name: 'steps')
  final List<Steps>? steps;

  Missions(
    this.id,
    this.title,
    this.description,
    this.lessonId,
    this.action,
    this.image,
    this.achievementType,
    this.achievementCount,
    this.valuableCoins,
    this.url,
    this.status,
    this.updatedAt,
    this.steps,
  );

  factory Missions.fromJson(Map<String, dynamic> json) =>
      _$MissionsFromJson(json);

  Map<String, dynamic> toJson() => _$MissionsToJson(this);
}
