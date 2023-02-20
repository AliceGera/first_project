import 'package:first_project/domain/model/code_word_data.dart';

abstract class ICodeWordRepository {
  Future<CodeWordData> getCodeWords();

  Future<void> sendCodeWord(CodeWordData data);
}
