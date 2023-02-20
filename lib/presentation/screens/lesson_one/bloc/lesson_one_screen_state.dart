part of 'lesson_one_screen_bloc.dart';

@immutable
abstract class LessonOneScreenState {}

class LessonOneScreenInitialState extends LessonOneScreenState {}
class LessonOneScreenLoadingState extends LessonOneScreenState {}

class LessonOneScreenSuccessState extends LessonOneScreenState {}

class LessonOneScreenFailedState extends LessonOneScreenState {}