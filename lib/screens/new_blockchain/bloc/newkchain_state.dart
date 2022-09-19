part of 'newkchain_bloc.dart';

@immutable
abstract class NewBlockchainState {}

class NewBlockchainInitialState extends NewBlockchainState {}
class NewBlockchainLoadingState extends NewBlockchainState {}

class NewBlockchainSuccessState extends NewBlockchainState {
  final BlockchainData data;

  NewBlockchainSuccessState(this.data);
}

class NewBlockchainFailedState extends NewBlockchainState {
  final dynamic error;
  NewBlockchainFailedState(this.error);
}