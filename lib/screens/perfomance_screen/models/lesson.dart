import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
part 'lesson.g.dart';

@JsonSerializable(explicitToJson: true)
class Lesson {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'uuid')
  final String? uuid;

  @JsonKey(name: 'title')
  final String? title;

  //image
  @JsonKey(name: 'lesson_group_id')
  final int? lessonGroupId;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'video_id')
  final String? videoId;

  @JsonKey(name: 'video_duration')
  final int? videoDuration;

  @JsonKey(name: 'image')
  final String? image;

  @JsonKey(name: 'status')
  final String? status;

  @JsonKey(ignore: true)
  LessonStatusType? lessonStatusType;

  @JsonKey(name: 'lesson_group_title')
  final String? lessonGroupTitle;


  Lesson(
    this.id,
    this.uuid,
    this.title,
    this.lessonGroupId,
    this.description,
    this.videoId,
    this.videoDuration,
    this.image,
    this.status,
      this.lessonGroupTitle,
  )
  {
    lessonStatusType = LessonStatusTypeExt.fromNameOrNull(status) ?? LessonStatusType.unwatched;
    //final LessonStatusType lessonStatusType= LessonStatusType.pending;
  }

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);

  Map<String, dynamic> toJson() => _$LessonToJson(this);
}

enum LessonStatusType {
  unwatched,
  pending,
  videoFinished,
  finished,
}

extension LessonStatusTypeExt on LessonStatusType {
  String get name => describeEnum(this);

  static LessonStatusType? fromNameOrNull(String? name) {
    if (name == null) {
      return null;
    }

    return LessonStatusType.values.firstWhereOrNull(
          (step) => step.name == name,
    );
  }/*
   String?  get fromEnumToString {
    switch (this) {
      case LessonStatusType.unwatched:
          return '1';
      case LessonStatusType.pending:
      // do something else
        return '1';
      case LessonStatusType.finished:
      // do something else
        return '1';
      case LessonStatusType.videoFinished:
      // do something else
        return '1';
    }
  }*/
}


