import 'package:json_annotation/json_annotation.dart';
part 'api_income_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ApiIncomeResponse {
  @JsonKey(name: 'number')
  final String? number;

  ApiIncomeResponse(
       this.number,
      );

  factory ApiIncomeResponse.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$ApiIncomeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiIncomeResponseToJson(this);
}
