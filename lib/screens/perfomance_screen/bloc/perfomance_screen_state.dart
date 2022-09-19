part of 'perfomance_screen_bloc.dart';

@immutable
abstract class PerformanceScreenState {}

class PerformanceScreenInitialState extends PerformanceScreenState {}
class PerformanceScreenLoadingState extends PerformanceScreenState {}

class PerformanceScreenSuccessState extends PerformanceScreenState {
  final PerformanceScreenData data;
  PerformanceScreenSuccessState(this.data);
}
class PerformanceScreenFailedState extends PerformanceScreenState {
  final dynamic error;
  PerformanceScreenFailedState(this.error);
}