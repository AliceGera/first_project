import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../perfomance_screen/models/missions.dart';
import '../../perfomance_screen/repository/api_repository.dart';
part 'missions_screen_event.dart';
part 'missions_screen_state.dart';

class MissionsScreenBloc
    extends Bloc<MissionsScreenEvent, MissionsScreenState> {
  final Repository repository = Repository();

  MissionsScreenBloc() : super(MissionsScreenInitialState()) {
    on<LoadMissionsScreenEvent>(_onLoadMissionEvent);
  }

  Future<void> _onLoadMissionEvent(
    LoadMissionsScreenEvent event,
    Emitter<MissionsScreenState> emit,
  ) async {
    emit(MissionsScreenLoadingState());
    try {
      List<Missions> missionsListPending = [];
      List<Missions> missionsListProcessing = [];
      final missions = await repository.getMissions();
      missions?.forEach((element) {
        if (element.status == 'pending') {
          missionsListPending.add(element);
        }
        else if(element.status=='processing'){
          missionsListProcessing.add(element);
        }
      });

      emit(MissionsScreenSuccessState(missionsListPending,missionsListProcessing));
    } catch (error) {
      emit(MissionsScreenFailedState('sss'));
    }
  }
}
