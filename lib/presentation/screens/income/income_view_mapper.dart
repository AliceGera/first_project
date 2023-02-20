import 'package:first_project/domain/model/code_word_data.dart';

import '../../../domain/model/delivery_address_data.dart';
import '../../../domain/model/income_data.dart';
import 'data/income_screen_data.dart';


abstract class IncomeViewMapper {
  factory IncomeViewMapper() => _IncomeViewMapper();

  IncomeData toDomainModelData(IncomeScreenData data);
}

class _IncomeViewMapper implements IncomeViewMapper {
  @override
  IncomeData toDomainModelData(IncomeScreenData data) {
    return IncomeData(
        number:data.number,
    );
  }
}
