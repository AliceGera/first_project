class CodeWordScreenData {
  int? selectedIndex;
  String? saveAnswer;
  List<CodeWordScreenItem> itemList;
  bool isValid;

  CodeWordScreenData(
    this.itemList, {
    this.selectedIndex,
    this.saveAnswer,
    this.isValid = false,
  });
}

//3 поля, но они не такие как в домейн! они не налабл, а чтобы достичь этого используем  ??
class CodeWordScreenItem {
  final int ordinal;
  final String code;
  final String value;

  CodeWordScreenItem(
    this.ordinal,
    this.code,
    this.value,
  );
}
