import 'package:first_project/screens/staking_web.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../motivations/motivations_screen.dart';
import 'bloc/newkchain_bloc.dart';

class newBlockchain extends StatefulWidget {
  const newBlockchain({Key? key}) : super(key: key);

  @override
  State<newBlockchain> createState() => _newBlockchainState();
}

double _value = 0;
var index = 0;

class _newBlockchainState extends State<newBlockchain>
    with TickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  )..forward();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return BlocProvider(
      create: (context) => NewBlockchainBloc()..add(LoadNewBlockchainEvent()),
      child: BlocBuilder<NewBlockchainBloc, NewBlockchainState>(
        builder: (context, state) {
          if (state is NewBlockchainLoadingState ||
              state is NewBlockchainInitialState) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.blue),
            );
          } else if (state is NewBlockchainFailedState) {
            return const Center(
              child: Text(
                'I\'m maks and i\'m kakash',
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
            );
          } else if (state is NewBlockchainSuccessState) {
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
                          // Color(0xFF78E2FB).withOpacity(1),
                          Color(0xFF44C7FF).withOpacity(1),
                          Color(0xFF368DC6).withOpacity(1),
                          Color(0xFF203771).withOpacity(1),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/sky.png',
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .8,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .7,
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                child: Center(
                                  child: AnimatedBuilder(
                                    builder: (context, child) {
                                      return SizedBox(
                                        height: _controller.value *
                                            MediaQuery.of(context).size.height *
                                            0.25,
                                        child: child,
                                      );
                                    },
                                    animation: _controller,
                                    child: Image.asset(
                                      state.data.images[index],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                              ),
                              Text(
                                state.data.mainText[index],
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                              ),
                              SizedBox(
                                child: Text(
                                  state.data.text[index],
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Color(0xFF27A8F0),
                              inactiveTrackColor: Colors.white,
                              thumbColor: Colors.white,
                              valueIndicatorColor: Color(0xFF27A8F0),
                              inactiveTickMarkColor: Colors.white,
                            ),
                            child: Slider(
                              divisions: 2,
                              max: 2,
                              value: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                  index = value.round();
                                  _controller.forward(from: 0);
                                });
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Rookie',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                              ),
                              Text(
                                'Skilled',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                              ),
                              Text(
                                'Expert',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.85,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                // if (index >= 0) {
                                setState(() {
                                  _value == 2;
                                });
                                // controller.jumpToPage(2);
                                //}
                              },
                              child: const Text(
                                'Skip',
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MotivationsScreen()));

                                Navigator.popAndPushNamed(context, '/screen3');
                                {
                                  const StakingWeb();
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
                  )
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
