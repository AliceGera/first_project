import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:first_project/screens/perfomance_screen/models/lesson.dart';
import 'package:meta/meta.dart';
import '../../perfomance_screen/models/galaxy.dart';
import '../../perfomance_screen/models/planet.dart';
import '../../perfomance_screen/repository/api_repository.dart';
part 'lessons_screen_event.dart';
part 'lessons_screen_state.dart';

class LessonsScreenBloc extends Bloc<LessonsEvent, LessonsScreenState> {
  final Repository repository = Repository();

  LessonsScreenBloc() : super(LessonsScreenInitialState()) {
    on<LoadLessonsEvent>(_onLoadLessonsEvent);
  }

  Future<void> _onLoadLessonsEvent(
    LoadLessonsEvent event,
    Emitter<LessonsScreenState> emit,
  ) async {
    emit(LessonsScreenLoadingState());
    try {
      final galaxies = await repository.getGalaxies();

      final galaxy = galaxies?.firstWhere(
        (element) =>
            element.planets?.any(
              (element) => element.id == event.planetId,
            ) ==
            true,
      );

      final planet = galaxy?.planets?.firstWhere(
        (element) => element.id == event.planetId,
      );
      final finishedLessons = planet?.lessons
              ?.where((element) =>
                  element.lessonStatusType == LessonStatusType.finished)
              .toList()
              .length ??
          0;
      final lesson = planet?.lessons?.firstWhere(
        (lesson) => lesson.lessonStatusType != LessonStatusType.finished,
      );
      emit(LessonsScreenSuccessState(lesson, planet, galaxy,finishedLessons));
    }
    catch (error) {
      emit(LessonsScreenFailedState('Failed get '));
    }
  }
}
