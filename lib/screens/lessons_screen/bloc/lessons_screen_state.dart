part of 'lessons_screen_bloc.dart';

@immutable
abstract class LessonsScreenState {}

class LessonsScreenInitialState extends LessonsScreenState {}
class LessonsScreenLoadingState extends LessonsScreenState {}

class LessonsScreenSuccessState extends LessonsScreenState {
  final Planet? planet;
  final Lesson? lesson;
  final Galaxy? galaxy;
  final int finishedLessons;
  LessonsScreenSuccessState(this.lesson,this.planet,this.galaxy,this.finishedLessons);
}
class LessonsScreenFailedState extends LessonsScreenState {
  final dynamic error;
  LessonsScreenFailedState(this.error);
}
