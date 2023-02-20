import 'package:first_project/data/model/code_word/api_code_word_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_code_word_request.g.dart';

@JsonSerializable(explicitToJson: true)
class ApiCodeWordRequest {
  @JsonKey(name: 'selected')
  final ApiCodeWordItem? selectedApiCodeWordItem;
  @JsonKey(name: 'answer')
  final String? answer;

  ApiCodeWordRequest({
    this.selectedApiCodeWordItem,
    this.answer,
  });

  factory ApiCodeWordRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ApiCodeWordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiCodeWordRequestToJson(this);
}
