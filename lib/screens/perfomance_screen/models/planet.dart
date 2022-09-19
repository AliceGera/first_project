import 'package:json_annotation/json_annotation.dart';

import 'lesson.dart';

part 'planet.g.dart';

@JsonSerializable(explicitToJson: true)
class Planet {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'uuid')
  final String? uuid;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'image')
  final String? image;

  @JsonKey(name: 'color')
  final String? color;

  @JsonKey(name: 'finished')
  final bool? finished;

  @JsonKey(name: 'unlocked')
  final bool? unlocked;

  @JsonKey(name: 'unlock_date')
  final String? unlockDate;

  @JsonKey(name: 'coins_to_unlock')
  final int? coinsToUnlock;

  @JsonKey(name: 'is_premium_content')
  final bool? isPremiumContent;

  @JsonKey(name: 'total_earned_coins')
  final int? totalEarnedCoins;

  @JsonKey(name: 'lesson_group_category_id')
  final int? lessonGroupCategoryId;

  @JsonKey(name: 'lessons')
  final List<Lesson>? lessons;

  Planet(
    this.id,
    this.uuid,
    this.title,
    this.lessons,
    this.image,
    this.color,
    this.finished,
    this.unlocked,
    this.unlockDate,
    this.coinsToUnlock,
    this.isPremiumContent,
    this.totalEarnedCoins,
    this.lessonGroupCategoryId,
  );

  factory Planet.fromJson(Map<String, dynamic> json) => _$PlanetFromJson(json);

  Map<String, dynamic> toJson() => _$PlanetToJson(this);
}
