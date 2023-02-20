import 'package:get_it/get_it.dart';
import '../../../domain/interactor/delivery_address_interactor.dart';
import 'bloc/delivery_adress_screen_bloc.dart';
import 'delivery_address_view_mapper.dart';

void initDeliveryAddressModule() {
  final getIt = GetIt.I;
  getIt.registerLazySingleton<DeliveryAddressViewMapper>(
    () => DeliveryAddressViewMapper(),
  );
  getIt.registerFactory<DeliveryAddressScreenBloc>(
    () => DeliveryAddressScreenBloc(
      getIt.get<DeliveryAddressViewMapper>(),
      getIt.get<DeliveryAddressInteractor>(),
    ),
  );
}
