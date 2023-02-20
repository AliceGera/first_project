import 'package:first_project/domain/model/code_word_data.dart';

import 'data/code_word_screen_data.dart';

abstract class CodeWordViewMapper {
  factory CodeWordViewMapper() => _CodewordViewMapper();

  CodeWordScreenData toScreenData(CodeWordData data);

  CodeWordData toDomainModelData(CodeWordScreenData data);
}

class _CodewordViewMapper implements CodeWordViewMapper {
  @override
  CodeWordScreenData toScreenData(CodeWordData data) {
    final codeWordList = data.codeWordList
        ?.map(
          (e) => CodeWordScreenItem(
            e.ordinal ?? 0,
            e.code ?? '',
            e.value ?? '',
          ),
        )
        .toList();
    return CodeWordScreenData(codeWordList ?? []);
  }

  @override
  CodeWordData toDomainModelData(CodeWordScreenData data) {
    CodeWordScreenItem? selectedItem;
    if (data.selectedIndex != null) {
      selectedItem = data.itemList[data.selectedIndex!];
    }
    return CodeWordData(
      answer: data.saveAnswer,
      selectedCodeWordItem: selectedItem != null
          ? CodeWordItem(
              selectedItem.ordinal,
              selectedItem.code,
              selectedItem.value,
            )
          : null,
    );
  }
}
