import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'my_bank_screen_event.dart';
part 'my_bank_screen_state.dart';

class MyBankScreenBloc extends Bloc<MyBankScreenEvent, MyBankScreenState> {

  MyBankScreenBloc() : super(MyBankScreenInitialState()) {
    on<LoadMyBankScreenEvent>((event, emit) async {
      emit(MyBankScreenLoadingState());
      try{
        await Future.delayed(const Duration(seconds: 7));
        emit(MyBankScreenSuccessState());
      }catch (error){
        emit(MyBankScreenFailedState('sss'));
      }
    });
  }
}
