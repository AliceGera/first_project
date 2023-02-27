import 'package:first_project/data/api/api_client.dart';
import 'package:first_project/domain/model/delivery_address_data.dart';
import '../../domain/repository/delivery_address_repository.dart';
import '../mapper/delivery_address_mapper.dart';

class ApiDeliveryAddressRepository implements IDeliveryAddressRepository {
  final HttpRequestExecutor httpRequestExecutor;
  final IDeliveryAddressMapper deliveryAddressMapper;

  ApiDeliveryAddressRepository(
    this.httpRequestExecutor,
    this.deliveryAddressMapper,
  );

  @override
  Future<void> sendDeliveryAddress(DeliveryAddressData data) async {
    final apiCodeWordRequest =
        deliveryAddressMapper.toApiDeliveryAddressRequest(data);
    await httpRequestExecutor.executeRequest(
      HttpMethod.post,
      Uri.parse("https://api.dev.io/codewords/save"),
      apiCodeWordRequest.toJson(),
    );
  }
}
