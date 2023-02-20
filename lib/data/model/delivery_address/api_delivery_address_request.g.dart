// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_delivery_address_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiDeliveryAddressRequest _$ApiDeliveryAddressRequestFromJson(
        Map<String, dynamic> json) =>
    ApiDeliveryAddressRequest(
      address: json['address'] as String?,
      numberHouse: json['numberHouse'] as String?,
      corps: json['corps'] as String?,
      structure: json['structure'] as String?,
      numberOfFlat: json['numberOfFlat'] as String?,
    );

Map<String, dynamic> _$ApiDeliveryAddressRequestToJson(
        ApiDeliveryAddressRequest instance) =>
    <String, dynamic>{
      'address': instance.address,
      'numberHouse': instance.numberHouse,
      'corps': instance.corps,
      'structure': instance.structure,
      'numberOfFlat': instance.numberOfFlat,
    };
