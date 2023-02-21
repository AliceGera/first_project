import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../widget/circular_progress_indicator_widget.dart';
import '../../../widget/failed_widget.dart';
import '../lesson_one/lesson_one_screen.dart';
import 'bloc/income_screen_bloc.dart';

class IncomeScreen extends StatefulWidget {
  const IncomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<IncomeScreen> createState() => _IncomeScreenScreenState();
}

class _IncomeScreenScreenState extends State<IncomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) =>
          GetIt.I.get<IncomeScreenBloc>()..add(LoadIncomeScreenEvent()),
      child: BlocBuilder<IncomeScreenBloc, IncomeScreenState>(
        builder: (context, state) {
          if (state is IncomeScreenLoadingState ||
              state is IncomeScreenInitialState) {
            return const CircularProgressIndicatorWidget();

          } else if (state is IncomeScreenFailedState) {
            return const FailedWidget();
          } else if (state is IncomeScreenSuccessState) {
            return SafeArea(
              child: GestureDetector(
                onTap: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: Scaffold(
                  backgroundColor: const Color(0xFFFCFCFC),
                  appBar: AppBar(
                    iconTheme: const IconThemeData(
                        color: Colors.black
                    ),
                    backgroundColor: const Color(0xFFFCFCFC),
                    centerTitle: true,
                    elevation: 0,
                    actions:  [
                      /// Icon( Icons.arrow_back,color: Colors.black, ),
                      Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  body: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Доход',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Comfort',
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                          Text(
                            'Общий среднемесячный доход, включая\nзарплату и все другие поступления',
                            style: TextStyle(
                              color: const Color(0xFF3C3C43).withOpacity(.6),
                              fontSize: 16,
                              height: 1.5,
                              fontFamily: 'Comfort',
                            ),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            cursorColor: const Color(0xFF9638E3),
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color:
                                      const Color(0xFF3C3C43).withOpacity(.6),
                                ),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFF9638E3), width: 1.0),
                              ),

                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              floatingLabelStyle: const TextStyle(
                                color: Color(0xFF963FE3),
                              ),
                              labelText: 'Сумма',
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.center,
                              hintText: '₽',
                            ),
                            onChanged: (text) {
                              BlocProvider.of<IncomeScreenBloc>(
                                  context)
                                  .add(
                                SaveIncomeScreenEvent('print $text'),
                              );
                            },
                          ),
                          SizedBox(height: size.height*0.6),
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
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  const LessonOneScreen()));  //const ImproveConditionsWidget()));
                                }
                                    : null,
                                //onPressed: () {},
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  child: Text(
                                    //AppLocalizations.of(context).continueBtn,
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
