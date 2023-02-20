// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_code_word_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCodeWordResponse _$ApiCodeWordResponseFromJson(Map<String, dynamic> json) =>
    ApiCodeWordResponse(
      (json['items'] as List<dynamic>?)
          ?.map((e) => ApiCodeWordItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiCodeWordResponseToJson(
        ApiCodeWordResponse instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

ApiCodeWordItem _$ApiCodeWordItemFromJson(Map<String, dynamic> json) =>
    ApiCodeWordItem(
      json['ordinal'] as int?,
      json['code'] as String?,
      json['value'] as String?,
    );

Map<String, dynamic> _$ApiCodeWordItemToJson(ApiCodeWordItem instance) =>
    <String, dynamic>{
      'ordinal': instance.ordinal,
      'code': instance.code,
      'value': instance.value,
    };
