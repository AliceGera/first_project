import 'package:first_project/presentation/screens/code_word/data/code_word_screen_data.dart';
import 'package:first_project/screens/learn_about_crypto/learn_about_crypto_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../widget/circular_progress_indicator_widget.dart';
import '../../../widget/failed_widget.dart';
import '../delivery_address/delivery_adress_screen.dart';
import 'bloc/code_word_screen_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TheCodewordScreen extends StatefulWidget {
  const TheCodewordScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<TheCodewordScreen> createState() => _TheCodewordScreenState();
}

class _TheCodewordScreenState extends State<TheCodewordScreen> {
  ///bool isValid = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) =>
          GetIt.I.get<CodeWordScreenBloc>()..add(LoadCodeWordScreenEvent()),
      child: BlocBuilder<CodeWordScreenBloc, CodeWordScreenState>(
        builder: (context, state) {
          if (state is CodeWordScreenLoadingState ||
              state is CodeWordScreenInitialState) {
            return const CircularProgressIndicatorWidget();
          } else if (state is CodeWordScreenFailedState) {
            return const FailedWidget();
          } else if (state is CodeWordScreenSuccessState) {
            return GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: SafeArea(
                child: Scaffold(
                  backgroundColor: const Color(0xFFFCFCFC),
                  appBar: AppBar(
                    iconTheme: const IconThemeData(color: Colors.black),
                    backgroundColor: const Color(0xFFFCFCFC),
                    centerTitle: true,
                    elevation: 0,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        //const newBlockchain()));
                                        const LearnAboutCryptoScreen()));
                          },
                          child: const Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  body: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Придумайте \nкодовое слово',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              height: 1.44,
                              fontFamily: 'SFProDisplay',
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                          Text(
                            'Понадобится для общения с поддержкой',
                            style: TextStyle(
                              color: const Color(0xFF3C3C43).withOpacity(0.6),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              fontFamily: 'SFProDisplay',
                            ),
                          ),
                          SizedBox(height: size.height * 0.06),
                          InkWell(
                            child: Text(
                              state.data.selectedIndex == null
                                  ? 'Выберите вопрос'
                                  : state
                                          .data
                                          .itemList[state.data.selectedIndex!]
                                          .value ??
                                      '',
                              style: TextStyle(
                                color: state.data.selectedIndex == null
                                    ? const Color(0xFF3C3C43).withOpacity(0.6)
                                    : Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                                fontFamily: 'SFProDisplay',
                              ),
                            ),
                            onTap: () => chooseAnswer(state.data, context),
                          ),
                          Divider(
                            height: 10,
                            thickness: 0,
                            indent: 0,
                            color: const Color(0xFF3C3C43).withOpacity(0.3),
                          ),
                          SizedBox(height: size.height * 0.06),
                          TextField(
                            onChanged: (text) {
                              BlocProvider.of<CodeWordScreenBloc>(context).add(
                                SaveAnswerScreenEvent('print $text'),
                              );
                            },
                            decoration: InputDecoration(
                              hintText: "Ответ",
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xFF3C3C43)
                                        .withOpacity(0.3)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      const Color(0xFF3C3C43).withOpacity(0.3),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.06),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: state.data.isValid
                                    ? const Color(0xFFBE62E9)
                                    : const Color(0xFFECECEC),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                              ),
                              onPressed: state.data.isValid
                                  ? () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) =>
                                              const DeliveryAddressScreen())); //const ImproveConditionsWidget()));
                                    }
                                  : null,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Text(
                                  AppLocalizations.of(context).continueBtn,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: state.data.isValid
                                        ? Colors.white
                                        : const Color(0x993C3C43),
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

  Future<void> chooseAnswer(
    CodeWordScreenData data,
    BuildContext context,
  ) async {
    showModalBottomSheet<void>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext ctx) {
        return ListView.builder(
          itemCount: data.itemList.isEmpty ? 0 : data.itemList.length + 1,
          shrinkWrap: true,
          itemBuilder: (_, int index) {
            if (index == 0) {
              return Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 32,
                    horizontal: 16,
                  ),
                  child: Text(
                    'Выберите вопрос',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SFProDisplay',
                    ),
                  ),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(
                  bottom: 32,
                  left: 16,
                ),
                child: InkWell(
                  onTap: () {
                    BlocProvider.of<CodeWordScreenBloc>(context).add(
                      SelectCodeWordQuestionScreenEvent(index - 1),
                    );
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(data.itemList[index - 1].value),
                      if (data.selectedIndex == index - 1)
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.check,
                            color: Color(0xFF9638E3),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            }
          },
        );
      },
    );
  }
}
