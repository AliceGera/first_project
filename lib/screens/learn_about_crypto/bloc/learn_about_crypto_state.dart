part of 'learn_about_crypto_bloc.dart';

@immutable
abstract class LearnAboutCryptoState {}

class LearnAboutCryptoInitialState extends LearnAboutCryptoState {}
class LearnAboutCryptoLoadingState extends LearnAboutCryptoState {}

class LearnAboutCryptoSuccessState extends LearnAboutCryptoState {}

class LearnAboutCryptoFailedState extends LearnAboutCryptoState {
  final dynamic error;
  LearnAboutCryptoFailedState(this.error);
}