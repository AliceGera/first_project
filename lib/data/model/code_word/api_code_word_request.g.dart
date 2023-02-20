// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_code_word_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCodeWordRequest _$ApiCodeWordRequestFromJson(Map<String, dynamic> json) =>
    ApiCodeWordRequest(
      selectedApiCodeWordItem: json['selected'] == null
          ? null
          : ApiCodeWordItem.fromJson(json['selected'] as Map<String, dynamic>),
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$ApiCodeWordRequestToJson(ApiCodeWordRequest instance) =>
    <String, dynamic>{
      'selected': instance.selectedApiCodeWordItem?.toJson(),
      'answer': instance.answer,
    };
