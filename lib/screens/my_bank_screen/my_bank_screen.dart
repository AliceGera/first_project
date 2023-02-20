import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widget/CircularProgressIndicatorWidget.dart';
import 'bloc/my_bank_screen_bloc.dart';

class MyBankScreen extends StatelessWidget {
  MyBankScreen({Key? key}) : super(key: key);

  final List<String> imagesCards = <String>[
    "assets/images/bg1.png",
    "assets/images/bg2.png",
    "assets/images/bg3.png",
    "assets/images/bg4.png",
    "assets/images/bg5.png",
  ];
  final List<String> remainder = <String>[
    ",50",
    ",50",
    ",50",
    ",50",
    "",
  ];
  final List<String> money = <String>[
    "20 000",
    "120 500",
    "267 332",
    "267 332",
    "12 000 000",
  ];
  final List<String> numberOfCards = <String>[
    "1234",
    "2345",
    "3456",
    "4567",
    "567890",
    "12 000 000",
  ];
  final List<String> cards = <String>[
    "Виртуальная Карта",
    "Своя Карта",
    "Своя Кредитка",
    "Кредитка 0%",
    "Свой Вклад 5%",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => MyBankScreenBloc()
        ..add(
          LoadMyBankScreenEvent(),
        ),
      child: BlocBuilder<MyBankScreenBloc, MyBankScreenState>(
        builder: (context, state) {
          if (state is MyBankScreenLoadingState ||
              state is MyBankScreenInitialState) {
            return const CircularProgressIndicatorWidget();
          } else if (state is MyBankScreenFailedState) {
            return const Center(
              child: Text(
                'ex',
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
            );
          } else if (state is MyBankScreenSuccessState) {
            return SafeArea(
              child: Scaffold(
                backgroundColor: const Color(0xFFFCFCFC),
                appBar: AppBar(
                  backgroundColor: const Color(0xFFFCFCFC),
                  centerTitle: true,
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/my_bank_profile.png',
                        height: 42,
                        width: 42,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Привет, Андрей',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Image.asset(
                            'assets/images/my_bank_bracket.png',
                            height: 24,
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/bell_my_bank.png',
                        height: 33,
                      ),
                    ],
                  ),
                ),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height * 0.02),
                        const Text(
                          'Мои продукты',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        SizedBox(
                          height: size.height * 0.25,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: imagesCards.length + 1,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                if (index != imagesCards.length) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: size.height * 0.25,
                                        width: size.width * 0.8,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 12),
                                          child: Stack(
                                            children: <Widget>[
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                child: Image.asset(
                                                  height: size.height * 0.25,
                                                  width: size.width * 0.8,
                                                  imagesCards[index],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.25,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      15.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                cards[index],
                                                                style:
                                                                    const TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                              Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 10),
                                                                  child: SvgPicture
                                                                      .asset(
                                                                          'assets/images/ellipse.svg')),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            4),
                                                                child: Text(
                                                                  numberOfCards[
                                                                      index],
                                                                  style:
                                                                      const TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          //мир
                                                        ],
                                                      ),
                                                      SizedBox(
                                                          height: size.height *
                                                              0.04),
                                                      Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                              money[index],
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style:
                                                                  const TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 32,
                                                                height: 1,
                                                              ),
                                                            ),
                                                            Text(
                                                              remainder[index],
                                                              style:
                                                                  const TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                height: 1,
                                                              ),
                                                            ),
                                                            const Text(
                                                              ' ₽',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                height: 1,
                                                              ),
                                                            ),
                                                          ]),
                                                      SizedBox(
                                                          height: size.height *
                                                              0.04),
                                                      const Spacer(),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            children: [
                                                              SvgPicture.asset(
                                                                  'assets/images/add.svg'),
                                                              const Text(
                                                                'Пополнить',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              SvgPicture.asset(
                                                                  'assets/images/pay.svg'),
                                                              const Text(
                                                                'Оплатить',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              SvgPicture.asset(
                                                                  'assets/images/settings.svg'),
                                                              const Text(
                                                                'Настройки',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                } else {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: size.height * 0.25,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: Colors.white,
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Color.fromRGBO(
                                                    60, 60, 67, 0.04),
                                                offset: Offset(
                                                  0,
                                                  0,
                                                ),
                                                blurRadius: 5.0,
                                                spreadRadius: 1.0,
                                              ), //BoxShadow
                                              //BoxShadow
                                            ],
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                    'assets/images/plus.png'),
                                                SizedBox(
                                                    height: size.height * 0.02),
                                                const Text(
                                                    'Открыть новый продукт'),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }
                              }),
                        ),
                        SizedBox(height: size.height * 0.02),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(60, 60, 67, 0.04),
                                offset: Offset(
                                  0,
                                  0,
                                ),
                                blurRadius: 9.0,
                                spreadRadius: 2.0,
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            children: [
                              Image.asset('assets/images/password.png'),
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    'Придумайте ПИН-код для карты, чтобы начать ею пользоваться',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        SizedBox(
                          width: double.infinity,
                          child: Image.asset(
                            'assets/images/banner.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
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
