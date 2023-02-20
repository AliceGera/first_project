import 'package:first_project/domain/model/code_word_data.dart';

import '../model/delivery_address_data.dart';

abstract class IDeliveryAddressRepository {

  Future<void> sendDeliveryAddress(DeliveryAddressData data);
}
