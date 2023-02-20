import 'dart:io';

import 'package:first_project/data/api/api_client.dart';
import 'package:first_project/data/mapper/code_word_mapper.dart';
import 'package:first_project/data/mapper/delivery_address_mapper.dart';
import 'package:first_project/data/repository/api_code_word_repository.dart';
import 'package:first_project/domain/repository/code_word_repository.dart';
import 'package:get_it/get_it.dart';
import '../../domain/repository/delivery_address_repository.dart';
import '../../domain/repository/income_repository.dart';
import '../mapper/income_mapper.dart';
import '../repository/api_delivery_address_repository.dart';
import '../repository/api_income_repository.dart';

Future<void> configureDataDependencies() async {
  final getIt = GetIt.I;

  getIt.registerLazySingleton<HttpRequestExecutor>(
    () => HttpRequestExecutor(
      HttpClient(),
    ),
  );
  getIt.registerLazySingleton<ICodeWordMapper>(
    () => ICodeWordMapper(),
  );
  getIt.registerLazySingleton<IDeliveryAddressMapper>(
    () => IDeliveryAddressMapper(),
  );
  getIt.registerLazySingleton<IIncomeMapper>(
        () => IIncomeMapper(),
  );
  getIt.registerLazySingleton<ICodeWordRepository>(
    () => ApiCodeWordRepository(
      getIt.get<HttpRequestExecutor>(),
      getIt.get<ICodeWordMapper>(),
    ),
  );
  getIt.registerLazySingleton<IDeliveryAddressRepository>(
        () => ApiDeliveryAddressRepository(
      getIt.get<HttpRequestExecutor>(),
      getIt.get<IDeliveryAddressMapper>(),
    ),
  );
  getIt.registerLazySingleton<IIncomeRepository>(
        () => ApiIncomeRepository(
      getIt.get<HttpRequestExecutor>(),
      getIt.get<IIncomeMapper>(),
    ),
  );


}
/////
