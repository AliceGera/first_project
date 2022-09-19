// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Planet _$PlanetFromJson(Map<String, dynamic> json) => Planet(
      json['id'] as int?,
      json['uuid'] as String?,
      json['title'] as String?,
      (json['lessons'] as List<dynamic>?)
          ?.map((e) => Lesson.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['image'] as String?,
      json['color'] as String?,
      json['finished'] as bool?,
      json['unlocked'] as bool?,
      json['unlock_date'] as String?,
      json['coins_to_unlock'] as int?,
      json['is_premium_content'] as bool?,
      json['total_earned_coins'] as int?,
      json['lesson_group_category_id'] as int?,
    );

Map<String, dynamic> _$PlanetToJson(Planet instance) => <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'title': instance.title,
      'image': instance.image,
      'color': instance.color,
      'finished': instance.finished,
      'unlocked': instance.unlocked,
      'unlock_date': instance.unlockDate,
      'coins_to_unlock': instance.coinsToUnlock,
      'is_premium_content': instance.isPremiumContent,
      'total_earned_coins': instance.totalEarnedCoins,
      'lesson_group_category_id': instance.lessonGroupCategoryId,
      'lessons': instance.lessons?.map((e) => e.toJson()).toList(),
    };
