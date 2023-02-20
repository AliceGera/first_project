import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../presentation/screens/code_word/codeword_screen.dart';
import '../../widget/CircularProgressIndicatorWidget.dart';
import '../new_blockchain/new_blockchain_screen.dart';
import 'bloc/learn_about_crypto_bloc.dart';

class LearnAboutCryptoScreen extends StatefulWidget {
  const LearnAboutCryptoScreen({Key? key}) : super(key: key);

  @override
  State<LearnAboutCryptoScreen> createState() => _LearnAboutCryptoScreenState();
}

class _LearnAboutCryptoScreenState extends State<LearnAboutCryptoScreen> {
  final PageController controller = PageController();
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LearnAboutCryptoBloc()..add(LoadLearnAboutCryptoEvent()),
      child: BlocBuilder<LearnAboutCryptoBloc, LearnAboutCryptoState>(
        builder: (context, state) {
          if (state is LearnAboutCryptoLoadingState ||
              state is LearnAboutCryptoInitialState) {
            return const CircularProgressIndicatorWidget();

          } else if (state is LearnAboutCryptoFailedState) {
            return const Center(
              child: Text(
                'ex',
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
            );
          } else if (state is LearnAboutCryptoSuccessState) {
            return Scaffold(
              body: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xFF44C7FF).withOpacity(1),
                          const Color(0xFF368DC6).withOpacity(1),
                          const Color(0xFF203771).withOpacity(1),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/sky.png',
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.75,
                        child: PageView(
                          controller: controller,
                          onPageChanged: (idx) {
                            setState(() {
                              index = idx;
                            });
                          },
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.25,
                                    child: Image.asset(
                                      'assets/images/imgLearnCrypto.png',
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                  ),
                                  const Text(
                                    'Learn about crypto',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                  ),
                                  const SizedBox(
                                    child: Text(
                                      'Crypto is complex, but Cryptor makes it easy:\n Learn with short, animated lessons that break\n down complex topics for anyone to understand.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.25,
                                    child: Image.asset(
                                      'assets/images/imgCompletePractical.png',
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                  ),
                                  const Text(
                                    'Complete practical tasks',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                  ),
                                  const Text(
                                    'Theory is good, but practice is even better:\n Apply your new skills in practical, real-world\n tasks so you can experience the world of\n Crypto first-hand.',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.25,
                                    child: Image.asset(
                                      'assets/images/imgEarnCoins.png',
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                  ),
                                  const Text(
                                    'Complete practical tasks',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                  ),
                                  const Text(
                                    'Your progress on Cryptor is rewarded with\n Stardust. Use Stardust to unlock new Galaxies',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        axisDirection: Axis.horizontal,
                        effect: const SlideEffect(
                          activeDotColor: Colors.white,
                          dotHeight: 8,
                          dotColor: Color(0xFF368DC6),
                          dotWidth: 8,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                if (index > 0) {
                                  print(index);
                                  setState(() {
                                    index=index-1;
                                  });
                                  print(index);
                                  controller.jumpTo(index * 1.0);
                                }
                              },
                              child: const Text(
                                'Back',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xFF27A8F0), // background
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ), // foreground
                              ),
                              onPressed: () {
                                if (index == 2) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              //const newBlockchain()));
                                              //const TheCodewordScreen()));
                                              // MyBankScreen()));
                                              const newBlockchain()));
                                  //Navigator.of(context).pushNamed('/screen2');
                                } else {
                                  index++;
                                  controller.jumpToPage(index);
                                  setState(() {});
                                }
                              },
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(45, 15, 45, 15),
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
