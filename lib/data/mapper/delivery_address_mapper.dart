import '../../domain/model/delivery_address_data.dart';
import '../model/delivery_address/api_delivery_address_request.dart';

abstract class IDeliveryAddressMapper {
  factory IDeliveryAddressMapper() => _DeliveryAddressMapper();

  ApiDeliveryAddressRequest toApiDeliveryAddressRequest(DeliveryAddressData data);
  //DeliveryAddressData toDeliveryAddressData(ApiDeliveryAddressResponse data);
}

class _DeliveryAddressMapper implements IDeliveryAddressMapper {
  @override
  ApiDeliveryAddressRequest toApiDeliveryAddressRequest(
      DeliveryAddressData data) {
    return ApiDeliveryAddressRequest(
      address: data.address,
      numberHouse: data.numberHouse,
      corps: data.corps,
      structure: data.structure,
      numberOfFlat: data.numberOfFlat,
    );
  }
}
 /* @override
  DeliveryAddressData toDeliveryAddressData(ApiDeliveryAddressResponse data) {
    return DeliveryAddressData(
      address: data.address,
      numberOfFlat: data.numberOfFlat,
      structure: data.structure,
      corps: data.corps,
      numberHouse: data.numberHouse,
    );
  }*/



