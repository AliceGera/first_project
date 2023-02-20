part of 'income_screen_bloc.dart';

@immutable
abstract class IncomeScreenEvent {}
class LoadIncomeScreenEvent extends IncomeScreenEvent{

}
class SaveIncomeScreenEvent extends IncomeScreenEvent{
  final String number;
  SaveIncomeScreenEvent(this.number);
}