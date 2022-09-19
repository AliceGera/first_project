part of 'lessons_screen_bloc.dart';

@immutable
abstract class LessonsEvent {}

class LoadLessonsEvent extends LessonsEvent {
  final int planetId;

  LoadLessonsEvent(this.planetId);
}