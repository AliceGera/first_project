import '../../../domain/model/delivery_address_data.dart';
import 'data/delivery_adress_screen_data.dart';

abstract class DeliveryAddressViewMapper {
  factory DeliveryAddressViewMapper() => _DeliveryAddressViewMapper();

  DeliveryAddressData    toDomainModelData(DeliveryAddressScreenData data);
}

class _DeliveryAddressViewMapper implements DeliveryAddressViewMapper {
  @override
  DeliveryAddressData toDomainModelData(DeliveryAddressScreenData data) {
    return DeliveryAddressData(
      address: data.address,
      numberOfFlat: data.numberOfFlat,
      structure: data.structure,
      corps: data.corps,
      numberHouse: data.numberHouse,
    );
  }
}
