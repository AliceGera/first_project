// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lesson _$LessonFromJson(Map<String, dynamic> json) => Lesson(
      json['id'] as int?,
      json['uuid'] as String?,
      json['title'] as String?,
      json['lesson_group_id'] as int?,
      json['description'] as String?,
      json['video_id'] as String?,
      json['video_duration'] as int?,
      json['image'] as String?,
      json['status'] as String?,
      json['lesson_group_title'] as String?,
    );

Map<String, dynamic> _$LessonToJson(Lesson instance) => <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'title': instance.title,
      'lesson_group_id': instance.lessonGroupId,
      'description': instance.description,
      'video_id': instance.videoId,
      'video_duration': instance.videoDuration,
      'image': instance.image,
      'status': instance.status,
      'lesson_group_title': instance.lessonGroupTitle,
    };
