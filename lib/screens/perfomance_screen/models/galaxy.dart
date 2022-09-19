import 'package:first_project/screens/perfomance_screen/models/planet.dart';
import 'package:json_annotation/json_annotation.dart';

part 'galaxy.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Galaxy {
  final int? id;
  final String? title;
  final String? image;
  final bool? unlocked;
  final String? unlockedDate;
  @JsonKey(name: 'lesson_groups')
  final List<Planet>? planets;

  Galaxy(
      this.id,
      this.title,
      this.image,
      this.unlocked,
      this.unlockedDate,
      this.planets,
      );

  factory Galaxy.fromJson(Map<String, dynamic> json) => _$GalaxyFromJson(json);

  Map<String, dynamic> toJson() => _$GalaxyToJson(this);
}