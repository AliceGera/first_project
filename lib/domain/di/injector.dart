import 'package:first_project/domain/interactor/code_word_interactor.dart';
import 'package:first_project/domain/interactor/delivery_address_interactor.dart';
import 'package:first_project/domain/repository/code_word_repository.dart';
import 'package:first_project/domain/repository/delivery_address_repository.dart';
import 'package:get_it/get_it.dart';

import '../interactor/income_interactor.dart';
import '../repository/income_repository.dart';

Future<void> configureDomainDependencies() async {
  final getIt = GetIt.I;

  getIt.registerLazySingleton<CodeWordInteractor>(
    () => CodeWordInteractor(
      getIt.get<ICodeWordRepository>(),
    ),
  );

  getIt.registerLazySingleton<DeliveryAddressInteractor>(
        () => DeliveryAddressInteractor(
      getIt.get<IDeliveryAddressRepository>(),
    ),
  );
  getIt.registerLazySingleton<IncomeInteractor>(
        () => IncomeInteractor(
      getIt.get<IIncomeRepository>(),
    ),
  );

}

//////
