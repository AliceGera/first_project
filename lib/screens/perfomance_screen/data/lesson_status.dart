import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';

enum LessonStatusEnum {
  locked,
  notFinish,
  completed;
  String get name => describeEnum(this);

  static LessonStatusEnum? fromNameOrNull(String? name) {
    if (name == null) {
      return null;
    }
    return LessonStatusEnum.values.firstWhereOrNull(
          (step) => step.name == name,
    );
  }
}
