import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:first_project/screens/new_blockchain/data/blockchain_data.dart';
import 'package:meta/meta.dart';
part 'newkchain_event.dart';
part 'newkchain_state.dart';

class NewBlockchainBloc extends Bloc<NewBlockchainEvent, NewBlockchainState> {
  NewBlockchainBloc() : super(NewBlockchainInitialState()) {
    on<LoadNewBlockchainEvent>(_newBlockchain);
  }

  Future<void> _newBlockchain(
      LoadNewBlockchainEvent event, Emitter<NewBlockchainState> emit) async {
    // TODO: implement event handler
    emit(NewBlockchainSuccessState(BlockchainData.init()));
  }
}
