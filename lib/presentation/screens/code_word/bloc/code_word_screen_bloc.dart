import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:first_project/domain/interactor/code_word_interactor.dart';
import 'package:first_project/presentation/screens/code_word/code_word_view_mapper.dart';
import 'package:first_project/presentation/screens/code_word/data/code_word_screen_data.dart';
import 'package:meta/meta.dart';

part 'code_word_screen_event.dart';

part 'code_word_screen_state.dart';

class CodeWordScreenBloc
    extends Bloc<CodeWordScreenEvent, CodeWordScreenState> {
  final CodeWordInteractor interactor;
  final CodeWordViewMapper viewMaper;

  late CodeWordScreenData screenData;

  CodeWordScreenBloc(
    this.interactor,
    this.viewMaper,
  ) : super(CodeWordScreenInitialState()) {
    on<LoadCodeWordScreenEvent>((event, emit) async {
      emit(CodeWordScreenLoadingState());
      try {
        final data = await interactor.getCodeWords();
        screenData = viewMaper.toScreenData(data);

        emit(CodeWordScreenSuccessState(screenData));
      } catch (error) {
        emit(CodeWordScreenFailedState('sss'));
      }
    });
    on<SelectCodeWordQuestionScreenEvent>((event, emit) async {
      screenData.selectedIndex = event.codeWordScreenItem;
      if (screenData.selectedIndex != 0 &&
          screenData.saveAnswer?.isEmpty == false) {
        screenData.isValid = true;
      }
      emit(CodeWordScreenSuccessState(screenData));
    });
    on<SaveAnswerScreenEvent>((event, emit) async {
      screenData.saveAnswer = event.codeWordScreenAnswer;
      if (screenData.selectedIndex != 0 &&
          screenData.saveAnswer?.isEmpty == false) {
        screenData.isValid = true;
      }
      emit(CodeWordScreenSuccessState(screenData));
    });
    on<ContinueScreenEvent>((event, emit) async {
      final codeWordData = viewMaper.toDomainModelData(screenData);
      await interactor.sendCodeWord(codeWordData);
      emit(CodeWordScreenSuccessState(screenData));
    });
  }
}
