import 'package:first_project/data/di/injector.dart';
import 'package:first_project/domain/di/injector.dart';
import 'package:first_project/presentation/di/injector.dart';

Future<void> configureInjector() async {
  await configureDataDependencies();
  await configureDomainDependencies();
  await configurePresentationDependencies();
}
