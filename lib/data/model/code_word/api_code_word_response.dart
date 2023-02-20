import 'package:json_annotation/json_annotation.dart';

part 'api_code_word_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ApiCodeWordResponse {
  @JsonKey(name: 'items')
  final List<ApiCodeWordItem>? items;

  ApiCodeWordResponse(
    this.items,
  );

  factory ApiCodeWordResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ApiCodeWordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiCodeWordResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ApiCodeWordItem {
  // 3 поля

  @JsonKey(name: 'ordinal')
  final int? ordinal;

  @JsonKey(name: 'code')
  final String? code;

  @JsonKey(name: 'value')
  final String? value;

  ApiCodeWordItem(
    this.ordinal,
    this.code,
    this.value,
  );

  factory ApiCodeWordItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ApiCodeWordItemFromJson(json);

  Map<String, dynamic> toJson() => _$ApiCodeWordItemToJson(this);
}
