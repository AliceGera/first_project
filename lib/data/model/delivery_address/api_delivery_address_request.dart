import 'package:json_annotation/json_annotation.dart';
part 'api_delivery_address_request.g.dart';

@JsonSerializable(explicitToJson: true)
class ApiDeliveryAddressRequest {
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

  ApiDeliveryAddressRequest({
    this.address,
    this.numberHouse,
    this.corps,
    this.structure,
    this.numberOfFlat,
  });

  factory ApiDeliveryAddressRequest.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$ApiDeliveryAddressRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiDeliveryAddressRequestToJson(this);
}
