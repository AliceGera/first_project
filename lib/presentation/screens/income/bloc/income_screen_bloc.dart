import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../../../../domain/interactor/income_interactor.dart';
import '../data/income_screen_data.dart';
import '../income_view_mapper.dart';

part 'income_screen_event.dart';

part 'income_screen_state.dart';

class IncomeScreenBloc extends Bloc<IncomeScreenEvent, IncomeScreenState> {
  final IncomeInteractor interactor;
  final IncomeViewMapper viewMapper;
  late IncomeScreenData screenData;

  IncomeScreenBloc(
    this.interactor,
    this.viewMapper,
  ) : super(IncomeScreenInitialState()) {
    on<LoadIncomeScreenEvent>((event, emit) async {
      screenData = IncomeScreenData();
      emit(IncomeScreenSuccessState(screenData));
    });
    on<SaveIncomeScreenEvent>((event, emit) async {
      screenData.number = event.number;
      if(screenData.number!= null) {
        screenData.isValid=true;
      }
      emit(IncomeScreenSuccessState(screenData));
    });
  }
}

