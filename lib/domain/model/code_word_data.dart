class CodeWordData {
  //from data to presentation
  final List<CodeWordItem>? codeWordList;

  //from presentation to data
  final CodeWordItem? selectedCodeWordItem;
  final String? answer;

  CodeWordData({
    this.codeWordList,
    this.answer,
    this.selectedCodeWordItem,
  });
}

class CodeWordItem {
  final int? ordinal;
  final String? code;
  final String? value;

  CodeWordItem(
    this.ordinal,
    this.code,
    this.value,
  );
}
