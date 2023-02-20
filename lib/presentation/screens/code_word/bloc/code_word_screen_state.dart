part of 'code_word_screen_bloc.dart';

@immutable
abstract class CodeWordScreenState {}

class CodeWordScreenInitialState extends CodeWordScreenState {}
class CodeWordScreenLoadingState extends CodeWordScreenState {}

class CodeWordScreenSuccessState extends CodeWordScreenState {
  //screen data
  final CodeWordScreenData data;
  CodeWordScreenSuccessState(this.data);
}

class CodeWordScreenFailedState extends CodeWordScreenState {
  final dynamic error;
  CodeWordScreenFailedState(this.error);
}

