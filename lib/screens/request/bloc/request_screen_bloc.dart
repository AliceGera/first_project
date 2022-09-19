import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../perfomance_screen/repository/api_repository.dart';
import '../data/request_screen_data.dart';

part 'request_screen_event.dart';

part 'request_screen_state.dart';

class RequestScreenBloc extends Bloc<RequestScreenEvent, RequestScreenState> {
  Repository repository = Repository();

  RequestScreenBloc() : super(RequestScreenInitialState()) {
    on<LoadRequestScreenEvent>(_requestScreen);
  }

  Future<void> _requestScreen(
    LoadRequestScreenEvent event,
    Emitter<RequestScreenState> emit,
  ) async {
    final listPost = await repository.fetchPosts();
    emit(RequestScreenSuccessState(RequestScreenData(listPost!)));
  }
}
