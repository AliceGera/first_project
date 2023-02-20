part of 'my_bank_screen_bloc.dart';

@immutable
abstract class MyBankScreenState {}

class MyBankScreenInitialState extends MyBankScreenState {}
class MyBankScreenLoadingState extends MyBankScreenState {}

class MyBankScreenSuccessState extends MyBankScreenState {}
class MyBankScreenFailedState extends MyBankScreenState {
  final dynamic error;
  MyBankScreenFailedState(this.error);
}