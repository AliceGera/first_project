import 'package:first_project/screens/learn_about_crypto/learn_about_crypto_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../widget/CircularProgressIndicatorWidget.dart';
import '../income/income_screen.dart';
import 'bloc/delivery_adress_screen_bloc.dart';

class DeliveryAddressScreen extends StatefulWidget {
  const DeliveryAddressScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DeliveryAddressScreen> createState() => _DeliveryAddressScreenState();
}

class _DeliveryAddressScreenState extends State<DeliveryAddressScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => GetIt.I.get<DeliveryAddressScreenBloc>()
        ..add(LoadDeliveryAddressScreenEvent()),
      child: BlocBuilder<DeliveryAddressScreenBloc, DeliveryAddressScreenState>(
        builder: (context, state) {
          if (state is DeliveryAddressScreenLoadingState ||
              state is DeliveryAddressScreenInitialState) {
            return const CircularProgressIndicatorWidget();

          } else if (state is DeliveryAddressScreenFailedState) {
            return const Center(
              child: Text(
                'ex',
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
            );
          } else if (state is DeliveryAddressScreenSuccessState) {
            return GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: SafeArea(
                child: Scaffold(
                  backgroundColor: const Color(0xFFFCFCFC),
                  appBar: AppBar(
                    iconTheme: const IconThemeData(
                        color: Colors.black
                    ),
                    backgroundColor: const Color(0xFFFCFCFC),
                    centerTitle: true,
                    elevation: 0,
                  ),
                  body: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Адрес доставки',
                            style: TextStyle(
                              color: Color(0xFF121212),
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'SFProDisplay',
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          Text(
                            'Адрес',
                            style: TextStyle(
                              fontSize: 16,
                              color: const Color(0xFF3C3C43).withOpacity(0.6),
                            ),
                          ),
                          TextField(
                            onChanged: (text) {
                              BlocProvider.of<DeliveryAddressScreenBloc>(
                                      context)
                                  .add(
                                SaveAnswerAddressEvent('print $text'),
                              );
                            },
                            decoration: InputDecoration(
                              hintText: "Введите адрес",
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xFF3C3C43)
                                        .withOpacity(0.6)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      const Color(0xFF3C3C43).withOpacity(0.6),
                                  width: 0.4,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.03),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                child: TextFormField(
                                  onChanged: (text) {
                                    BlocProvider.of<DeliveryAddressScreenBloc>(
                                            context)
                                        .add(
                                      SaveAnswerNumberHouseEvent('print $text'),
                                    );
                                  },
                                  decoration: const InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    labelText: 'Дом',
                                    hintText: 'Дом',
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Flexible(
                                child: TextFormField(
                                  onChanged: (text) {
                                    BlocProvider.of<DeliveryAddressScreenBloc>(
                                            context)
                                        .add(
                                      SaveAnswerCorpsEvent('print $text'),
                                    );
                                  },
                                  decoration: const InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    labelText: 'Корп.',
                                    hintText: 'Корп.',
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Flexible(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  onChanged: (text) {
                                    BlocProvider.of<DeliveryAddressScreenBloc>(
                                            context)
                                        .add(
                                      SaveAnswerStructureEvent('print $text'),
                                    );
                                  },
                                  decoration: const InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    labelText: 'Стр.',
                                    hintText: 'Стр.',
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Flexible(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  onChanged: (text) {
                                    BlocProvider.of<DeliveryAddressScreenBloc>(
                                            context)
                                        .add(
                                      SaveAnswerNumberOfFlatEvent(
                                          'print $text'),
                                    );
                                  },
                                  decoration: const InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    labelText: 'Кв.',
                                    hintText: 'Кв.',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.55),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 50),
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  //backgroundColor: state.data.isValid ?const Color(0xFFBE62E9):const Color(0xFFECECEC),
                                  backgroundColor: const Color(0xFFBE62E9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                ),
                                onPressed: state.data.isValid
                                    ? () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const IncomeScreen())); //const ImproveConditionsWidget()));
                                      }
                                    : null,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  child: Text(
                                   'Продолжить',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
