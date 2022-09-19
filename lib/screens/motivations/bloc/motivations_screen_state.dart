part of 'motivations_screen_bloc.dart';

@immutable
abstract class MotivationsScreenState {}

class MotivationsScreenInitialState extends MotivationsScreenState {}

class MotivationsScreenLoadingState extends MotivationsScreenState {}

class MotivationsScreenSuccessState extends MotivationsScreenState {
  final MotivationsData data;
  MotivationsScreenSuccessState(this.data);
}

class MotivationsScreenFailedState extends MotivationsScreenState {
  final dynamic error;
  MotivationsScreenFailedState(this.error);
}