import '../../domain/model/delivery_address_data.dart';
import '../../domain/model/income_data.dart';
import '../model/delivery_address/api_delivery_address_request.dart';
import '../model/income/api_income_request.dart';

abstract class IIncomeMapper {
  factory IIncomeMapper() => _IIncomeMapper();

  ApiIncomeRequest toApiIncomeRequest(IncomeData data);
//DeliveryAddressData toDeliveryAddressData(ApiDeliveryAddressResponse data);
}

class _IIncomeMapper implements IIncomeMapper {
  @override
  ApiIncomeRequest toApiIncomeRequest(
      IncomeData data) {
    return ApiIncomeRequest(
      number: data.number,

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



