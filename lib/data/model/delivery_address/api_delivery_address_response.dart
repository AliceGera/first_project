import 'package:json_annotation/json_annotation.dart';

part 'api_delivery_address_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ApiDeliveryAddressResponse {
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'numberHouse')
  final String? numberHouse;
  @JsonKey(name: 'corps')
  final String? corps;
  @JsonKey(name: 'structure')
  final String? structure;
  @JsonKey(name: 'numberOfFlat')
  final String? numberOfFlat;


  ApiDeliveryAddressResponse(
      this.address,
      this.numberHouse,
      this.corps,
      this.structure,
      this.numberOfFlat,
      );

  factory ApiDeliveryAddressResponse.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$ApiDeliveryAddressResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiDeliveryAddressResponseToJson(this);
}
