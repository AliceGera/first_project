part of 'request_screen_bloc.dart';

@immutable
abstract class RequestScreenState {}

class RequestScreenInitialState extends RequestScreenState {}
class RequestScreenLoadingState extends RequestScreenState {}

class RequestScreenSuccessState extends RequestScreenState {
  final RequestScreenData data;
  RequestScreenSuccessState(this.data);
}
class RequestScreenFailedState extends RequestScreenState {
  final dynamic error;
  RequestScreenFailedState(this.error);
}