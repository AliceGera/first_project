part of 'delivery_adress_screen_bloc.dart';

@immutable
abstract class DeliveryAddressScreenState {}

class DeliveryAddressScreenInitialState extends DeliveryAddressScreenState {}
class DeliveryAddressScreenLoadingState extends DeliveryAddressScreenState {}

class DeliveryAddressScreenSuccessState extends DeliveryAddressScreenState {
  final DeliveryAddressScreenData data;
  DeliveryAddressScreenSuccessState(this.data);
}

class DeliveryAddressScreenFailedState extends DeliveryAddressScreenState {
  final dynamic error;
  DeliveryAddressScreenFailedState(this.error);
}

