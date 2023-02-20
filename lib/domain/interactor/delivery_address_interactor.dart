import 'package:first_project/domain/model/code_word_data.dart';

import '../model/delivery_address_data.dart';
import '../repository/delivery_address_repository.dart';

class DeliveryAddressInteractor {
  final IDeliveryAddressRepository deliveryAddressRepository;

  DeliveryAddressInteractor(this.deliveryAddressRepository);

  Future<void> sendWords(DeliveryAddressData data) {
    return deliveryAddressRepository.sendDeliveryAddress(data);
  }
}
