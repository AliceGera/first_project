// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'steps.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Steps _$StepsFromJson(Map<String, dynamic> json) => Steps(
      json['id'] as int?,
      json['title'] as String?,
      json['description'] as String?,
      json['image'] as String?,
      json['mission_id'] as int?,
    );

Map<String, dynamic> _$StepsToJson(Steps instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'mission_id': instance.missionId,
    };
