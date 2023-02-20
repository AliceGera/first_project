import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'lesson_one_screen_event.dart';
part 'lesson_one_screen_state.dart';

class LessonOneScreenBloc extends Bloc<LessonOneScreenEvent, LessonOneScreenState> {
  LessonOneScreenBloc() : super(LessonOneScreenInitialState()) {
    on<LessonOneScreenEvent>((event, emit) {
      emit(LessonOneScreenSuccessState());
    });
  }
}
