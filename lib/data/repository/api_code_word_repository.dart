import 'package:first_project/data/api/api_client.dart';
import 'package:first_project/data/mapper/code_word_mapper.dart';
import 'package:first_project/data/model/code_word/api_code_word_response.dart';

import '../../domain/model/code_word_data.dart';
import '../../domain/repository/code_word_repository.dart';

class ApiCodeWordRepository implements ICodeWordRepository {
  final HttpRequestExecutor httpRequestExecutor;
  final ICodeWordMapper codeWordMapper;

  ApiCodeWordRepository(
    this.httpRequestExecutor,
    this.codeWordMapper,
  );

  @override
  Future<CodeWordData> getCodeWords() async {
    final response = {
      "step": "STEP_CODE_WORD",
      "version": [
        "SET_CODE_WORD_FLOW",
        "DEBIT_CARD_ACTIVATION_DEFAULT",
        "DEBIT_CARD_ACTIVATION_MOBILE"
      ],
      "routes": [],
      "data": {
        "keyWord": {"keyWord": "Касюк", "keyQuestion": "PETS_NAME"},
        "keyWordHints": {
          "keyQuestion": {
            "items": [
              {
                "ordinal": 0,
                "code": "MOTHER_MAIDEN_NAME",
                "value": "Девичья фамилия матери"
              },
              {
                "ordinal": 1,
                "code": "PETS_NAME",
                "value": "Кличка домашнего питомца"
              },
              {"ordinal": 2, "code": "FAVORITE_DISH", "value": "Любимое блюдо"},
              {
                "ordinal": 3,
                "code": "FIRST_CARS_BRAND",
                "value": "Марка первого автомобиля"
              },
              {
                "ordinal": 4,
                "code": "FAVORITE_MUSICAL_GROUP",
                "value": "Любимая музыкальная группа"
              },
              {
                "ordinal": 5,
                "code": "FIRST_TEACHER_NAME",
                "value": "Имя первого учителя"
              },
              {
                "ordinal": 6,
                "code": "GRANDFATHERS_PROFESSION",
                "value": "Профессия вашего дедушки"
              },
              {
                "ordinal": 7,
                "code": "COUNTRY_OF_FIRST_TRAVEL",
                "value": "Страна первого путешествия"
              },
              {
                "ordinal": 8,
                "code": "FAVORITE_SPORTS_TEAM",
                "value": "Любимая спортивная команда"
              }
            ]
          }
        }
      }
    } as Map<String,
        dynamic>?; /*await httpRequestExecutor.executeRequest(
      HttpMethod.get,
      Uri.parse("https://api.dev.io/codewords"),
      null,
    );*/

    final keyQuestionList = response?["data"]?["keyWordHints"]?["keyQuestion"];
    final mappedResponse = ApiCodeWordResponse.fromJson(keyQuestionList);
    final codeWordData = codeWordMapper.toCodeWordData(mappedResponse);
    return codeWordData;
  }

  @override
  Future<void> sendCodeWord(CodeWordData data) async {
    final apiCodeWordRequest = codeWordMapper.toApiCodeWordRequest(data);
    await httpRequestExecutor.executeRequest(
      HttpMethod.post,
      Uri.parse("https://api.dev.io/codewords/save"),
      apiCodeWordRequest.toJson(),
    );
  }
}
