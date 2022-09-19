import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'learn_about_crypto_event.dart';
part 'learn_about_crypto_state.dart';

class LearnAboutCryptoBloc extends Bloc<LearnAboutCryptoEvent, LearnAboutCryptoState> {
  LearnAboutCryptoBloc() : super(LearnAboutCryptoInitialState()) {
    on<LearnAboutCryptoEvent>((event, emit) async {
      emit(LearnAboutCryptoLoadingState());
     try{
       await Future.delayed(Duration(seconds: 7));
       emit(LearnAboutCryptoSuccessState());
     }catch (error){
       emit(LearnAboutCryptoFailedState('sss'));
     }
    });
  }
}
