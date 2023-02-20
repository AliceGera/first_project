part of 'delivery_adress_screen_bloc.dart';

@immutable
abstract class DeliveryAddressScreenEvent {}

class LoadDeliveryAddressScreenEvent extends DeliveryAddressScreenEvent {}

class SelectCodeWordQuestionScreenEvent extends DeliveryAddressScreenEvent {}

class SaveAnswerAddressEvent extends DeliveryAddressScreenEvent {
  final String address;
  SaveAnswerAddressEvent(this.address);
}
class SaveAnswerNumberHouseEvent extends DeliveryAddressScreenEvent {
  final String numberHouse;
  SaveAnswerNumberHouseEvent(this.numberHouse);
}
class SaveAnswerCorpsEvent extends DeliveryAddressScreenEvent {
  final String corps;
  SaveAnswerCorpsEvent(this.corps);
}
class SaveAnswerStructureEvent extends DeliveryAddressScreenEvent {
  final String structure;
  SaveAnswerStructureEvent(this.structure);
}
class SaveAnswerNumberOfFlatEvent extends DeliveryAddressScreenEvent {
  final String numberOfFlat;
  SaveAnswerNumberOfFlatEvent(this.numberOfFlat);
}
class ContinueScreenEvent extends DeliveryAddressScreenEvent {
  ContinueScreenEvent();
}