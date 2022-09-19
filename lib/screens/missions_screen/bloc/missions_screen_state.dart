part of 'missions_screen_bloc.dart';

@immutable
abstract class MissionsScreenState {}

class MissionsScreenInitialState extends MissionsScreenState {}
class MissionsScreenLoadingState extends MissionsScreenState {}
class MissionsScreenSuccessState extends MissionsScreenState {
  final List<Missions> missionsListPending;
  final List<Missions> missionsListProcessing;
  MissionsScreenSuccessState(this.missionsListPending,this.missionsListProcessing);
}
class MissionsScreenFailedState extends MissionsScreenState {
  final dynamic error;
  MissionsScreenFailedState(this.error);
}