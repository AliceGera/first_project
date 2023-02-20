import 'package:first_project/domain/model/code_word_data.dart';

import '../repository/code_word_repository.dart';

class CodeWordInteractor  {
  final ICodeWordRepository codeWordRepository;

  CodeWordInteractor(this.codeWordRepository);

  Future<CodeWordData> getCodeWords() {
    return codeWordRepository.getCodeWords();
  }

  Future<void> sendCodeWord(CodeWordData data) {
    return codeWordRepository.sendCodeWord(data);
  }
}
