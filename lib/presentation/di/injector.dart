import 'package:first_project/presentation/screens/code_word/codeword_module.dart';
import '../screens/delivery_address/delivery_addres_module.dart';
import '../screens/income/income_module.dart';

Future<void> configurePresentationDependencies() async {
  initCodewordModule();
  initDeliveryAddressModule();
  initIncomeModule();
}
