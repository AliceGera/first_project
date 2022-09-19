import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/motivations_data.dart';

part 'motivations_screen_event.dart';

part 'motivations_screen_state.dart';

class MotivationsScreenBloc
    extends Bloc<MotivationsScreenEvent, MotivationsScreenState> {
  MotivationsScreenBloc() : super(MotivationsScreenInitialState()) {
    on<LoadMotivationsScreenEvent>(_motivationsScreenEvent);
  }

  Future<void> _motivationsScreenEvent(
      LoadMotivationsScreenEvent event,
    Emitter<MotivationsScreenState> emit,
  ) async {
    emit(MotivationsScreenLoadingState());
    try {
      await Future.delayed(Duration(seconds: 3));
      emit(MotivationsScreenSuccessState(MotivationsData.init()));
    } catch (error) {
      emit(MotivationsScreenFailedState('sss'));
    }
  }
}
