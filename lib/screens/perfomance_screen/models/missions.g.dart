// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'missions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Missions _$MissionsFromJson(Map<String, dynamic> json) => Missions(
      json['id'] as int?,
      json['title'] as String?,
      json['description'] as String?,
      json['lesson_id'] as int?,
      json['action'] as String?,
      json['image'] as String?,
      json['achievement_type'] as String?,
      json['achievement_count'] as int?,
      json['valuable_coins'] as int?,
      json['url'] as String?,
      json['status'] as String?,
      json['updated_at'] as String?,
      (json['steps'] as List<dynamic>?)
          ?.map((e) => Steps.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MissionsToJson(Missions instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'lesson_id': instance.lessonId,
      'action': instance.action,
      'image': instance.image,
      'achievement_type': instance.achievementType,
      'achievement_count': instance.achievementCount,
      'valuable_coins': instance.valuableCoins,
      'url': instance.url,
      'status': instance.status,
      'updated_at': instance.updatedAt,
      'steps': instance.steps?.map((e) => e.toJson()).toList(),
    };
