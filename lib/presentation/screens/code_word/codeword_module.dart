import 'package:get_it/get_it.dart';

import '../../../domain/interactor/code_word_interactor.dart';
import 'bloc/code_word_screen_bloc.dart';
import 'code_word_view_mapper.dart';

void initCodewordModule() {
  final getIt = GetIt.I;
  getIt.registerLazySingleton<CodeWordViewMapper>(() => CodeWordViewMapper());
  getIt.registerFactory<CodeWordScreenBloc>(
    () => CodeWordScreenBloc(
      getIt.get<CodeWordInteractor>(),
      getIt.get<CodeWordViewMapper>(),
    ),
  );
}

