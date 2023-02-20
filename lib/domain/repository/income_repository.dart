import '../model/income_data.dart';

abstract class IIncomeRepository {
  //Future<IncomeData> getCodeWords();
  Future<void> sendIncome(IncomeData data);
}
