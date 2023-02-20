import 'package:first_project/data/model/code_word/api_code_word_response.dart';
import 'package:json_annotation/json_annotation.dart';
part 'api_income_request.g.dart';


@JsonSerializable(explicitToJson: true)
class ApiIncomeRequest {

  @JsonKey(name: 'number')
  final String? number;

  ApiIncomeRequest({
    this.number,
  });

  factory ApiIncomeRequest.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$ApiIncomeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiIncomeRequestToJson(this);
}
