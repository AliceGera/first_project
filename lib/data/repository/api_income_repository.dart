import 'package:first_project/data/api/api_client.dart';
import 'package:first_project/data/mapper/code_word_mapper.dart';
import 'package:first_project/data/model/code_word/api_code_word_response.dart';

import '../../domain/model/code_word_data.dart';
import '../../domain/model/income_data.dart';
import '../../domain/repository/code_word_repository.dart';
import '../../domain/repository/income_repository.dart';
import '../mapper/income_mapper.dart';

class ApiIncomeRepository implements IIncomeRepository {
  final HttpRequestExecutor httpRequestExecutor;
  final IIncomeMapper incomeMapper;

  ApiIncomeRepository(
      this.httpRequestExecutor,
      this.incomeMapper,
      );



  @override
  Future<void> sendIncome(IncomeData data) async {
    final apiCodeWordRequest = incomeMapper.toApiIncomeRequest(data);
    await httpRequestExecutor.executeRequest(
      HttpMethod.post,
      Uri.parse("https://api.dev.io/codewords/save"),
      apiCodeWordRequest.toJson(),
    );
  }
}
