part of 'code_word_screen_bloc.dart';

@immutable
abstract class CodeWordScreenEvent {}

class LoadCodeWordScreenEvent extends CodeWordScreenEvent {}

class SelectCodeWordQuestionScreenEvent extends CodeWordScreenEvent {
  final int codeWordScreenItem;

  SelectCodeWordQuestionScreenEvent(this.codeWordScreenItem);
}

class SaveAnswerScreenEvent extends CodeWordScreenEvent {
  final String codeWordScreenAnswer;

  SaveAnswerScreenEvent(this.codeWordScreenAnswer);
}

class ContinueScreenEvent extends CodeWordScreenEvent {
  ContinueScreenEvent();
}
