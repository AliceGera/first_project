import 'package:first_project/data/model/code_word/api_code_word_request.dart';
import 'package:first_project/data/model/code_word/api_code_word_response.dart';
import 'package:first_project/domain/model/code_word_data.dart';

abstract class ICodeWordMapper {
  factory ICodeWordMapper() => _CodeWordMapper();

  ApiCodeWordRequest toApiCodeWordRequest(CodeWordData data);

  CodeWordData toCodeWordData(ApiCodeWordResponse data);
}

class _CodeWordMapper implements ICodeWordMapper {
  @override
  ApiCodeWordRequest toApiCodeWordRequest(CodeWordData data) {
    return ApiCodeWordRequest(
      selectedApiCodeWordItem: ApiCodeWordItem(
        data.selectedCodeWordItem?.ordinal,
        data.selectedCodeWordItem?.code,
        data.selectedCodeWordItem?.value,
      ),
      answer: data.answer,
    );
  }

  @override
  CodeWordData toCodeWordData(ApiCodeWordResponse data) {
    final codeWordList = data.items
        ?.map(
          (e) => CodeWordItem(
            e.ordinal,
            e.code,
            e.value,
          ),
        )
        .toList();
    return CodeWordData(codeWordList: codeWordList);
  }
}
