// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_delivery_address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiDeliveryAddressResponse _$ApiDeliveryAddressResponseFromJson(
        Map<String, dynamic> json) =>
    ApiDeliveryAddressResponse(
      json['address'] as String?,
      json['numberHouse'] as String?,
      json['corps'] as String?,
      json['structure'] as String?,
      json['numberOfFlat'] as String?,
    );

Map<String, dynamic> _$ApiDeliveryAddressResponseToJson(
        ApiDeliveryAddressResponse instance) =>
    <String, dynamic>{
      'address': instance.address,
      'numberHouse': instance.numberHouse,
      'corps': instance.corps,
      'structure': instance.structure,
      'numberOfFlat': instance.numberOfFlat,
    };
