import '../model/income_data.dart';
import '../repository/income_repository.dart';

class IncomeInteractor  {
  final IIncomeRepository IncomeRepository;

  IncomeInteractor(this.IncomeRepository);

  Future<void> sendIncome(IncomeData data) {
    return IncomeRepository.sendIncome(data);
  }
}
