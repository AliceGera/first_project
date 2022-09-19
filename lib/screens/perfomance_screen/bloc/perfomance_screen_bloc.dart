import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../data/perfomance_data.dart';
import '../repository/api_repository.dart';
part 'perfomance_screen_event.dart';
part 'perfomance_screen_state.dart';

class PerformanceScreenBloc
    extends Bloc<PerformanceScreenEvent, PerformanceScreenState> {
  final Repository repository = Repository();

  PerformanceScreenBloc() : super(PerformanceScreenInitialState()) {
    on<LoadPerformanceScreenEvent>((event, emit) async {
      emit(PerformanceScreenLoadingState());
      try {
        final galaxies = await repository.getGalaxy();
        emit(
          PerformanceScreenSuccessState(
            PerformanceScreenData(galaxies),
          ),
        );
      } catch (error) {
        emit(PerformanceScreenFailedState('sss'));
      }
    });
  }
}
