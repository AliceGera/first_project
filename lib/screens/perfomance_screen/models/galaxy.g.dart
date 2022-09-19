// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'galaxy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Galaxy _$GalaxyFromJson(Map<String, dynamic> json) => Galaxy(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
      json['unlocked'] as bool?,
      json['unlocked_date'] as String?,
      (json['lesson_groups'] as List<dynamic>?)
          ?.map((e) => Planet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GalaxyToJson(Galaxy instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'unlocked': instance.unlocked,
      'unlocked_date': instance.unlockedDate,
      'lesson_groups': instance.planets?.map((e) => e.toJson()).toList(),
    };
