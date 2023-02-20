part of 'income_screen_bloc.dart';

@immutable
abstract class IncomeScreenState {}

class IncomeScreenInitialState extends IncomeScreenState {}

class IncomeScreenSuccessState extends IncomeScreenState {
  final IncomeScreenData  data;
  IncomeScreenSuccessState(this.data);
}
class IncomeScreenFailedState extends IncomeScreenState {}
class IncomeScreenLoadingState extends IncomeScreenState {}
