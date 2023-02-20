import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../domain/interactor/delivery_address_interactor.dart';
import '../data/delivery_adress_screen_data.dart';
import '../delivery_address_view_mapper.dart';

part 'delivery_adress_screen_event.dart';

part 'delivery_adress_screen_state.dart';

class DeliveryAddressScreenBloc
    extends Bloc<DeliveryAddressScreenEvent, DeliveryAddressScreenState> {
  final DeliveryAddressInteractor interactor;
  final DeliveryAddressViewMapper viewMapper;

  late DeliveryAddressScreenData screenData;

  DeliveryAddressScreenBloc(this.viewMapper, this.interactor)
      : super(DeliveryAddressScreenInitialState()) {

    on<LoadDeliveryAddressScreenEvent>((event, emit) async {
      screenData = DeliveryAddressScreenData();
      emit(DeliveryAddressScreenSuccessState(screenData));
    });

    on<SaveAnswerAddressEvent>((event, emit) async {
      screenData.address = event.address;
      if (screenData.address != null &&
          (screenData.numberHouse != null ||
              screenData.corps != null ||
              screenData.structure != null ||
              screenData.numberOfFlat != null)) {
        screenData.isValid = true;
      }
      emit(DeliveryAddressScreenSuccessState(screenData));
    });
    on<SaveAnswerNumberHouseEvent>((event, emit) async {
      screenData.numberHouse = event.numberHouse;
      if (screenData.address != null &&
          (screenData.numberHouse != null ||
              screenData.corps != null ||
              screenData.structure != null ||
              screenData.numberOfFlat != null)) {
        screenData.isValid = true;
      }
      emit(DeliveryAddressScreenSuccessState(screenData));
    });
    on<SaveAnswerCorpsEvent>((event, emit) async {
      screenData.corps = event.corps;
      if (screenData.address != null &&
          (screenData.numberHouse != null ||
              screenData.corps != null ||
              screenData.structure != null ||
              screenData.numberOfFlat != null)) {
        screenData.isValid = true;
      }
      emit(DeliveryAddressScreenSuccessState(screenData));
    });
    on<SaveAnswerStructureEvent>((event, emit) async {
      screenData.structure = event.structure;
      if (screenData.address != null &&
          (screenData.numberHouse != null ||
              screenData.corps != null ||
              screenData.structure != null ||
              screenData.numberOfFlat != null)) {
        screenData.isValid = true;
      }
      emit(DeliveryAddressScreenSuccessState(screenData));
    });
    on<SaveAnswerNumberOfFlatEvent>((event, emit) async {
      screenData.numberOfFlat = event.numberOfFlat;
      if (screenData.address != null &&
          (screenData.numberHouse?.isNotEmpty == true ||
              screenData.corps != null ||
              screenData.structure != null ||
              screenData.numberOfFlat != null)) {
        screenData.isValid = true;
      }
      emit(DeliveryAddressScreenSuccessState(screenData));
    });
    on<ContinueScreenEvent>((event, emit) async {
      final deliveryAddressData = viewMapper.toDomainModelData(screenData);
      await interactor.sendWords(deliveryAddressData);
      emit(DeliveryAddressScreenSuccessState(screenData));
    });
  }
}
