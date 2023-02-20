import 'package:get_it/get_it.dart';

import '../../../domain/interactor/income_interactor.dart';
import 'bloc/income_screen_bloc.dart';
import 'income_view_mapper.dart';


void initIncomeModule() {
  final getIt = GetIt.I;
  getIt.registerLazySingleton<IncomeViewMapper>(() => IncomeViewMapper());
  getIt.registerFactory<IncomeScreenBloc>(
        () => IncomeScreenBloc(
      getIt.get<IncomeInteractor>(),
      getIt.get<IncomeViewMapper>(),
    ),
  );
}

