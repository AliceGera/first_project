import 'package:flutter/material.dart';

class StakingWeb extends StatefulWidget {
  const StakingWeb({Key? key}) : super(key: key);

  @override
  State<StakingWeb> createState() => _StakingWebState();
}

class _StakingWebState extends State<StakingWeb> {
  double _value = 1;

  @override
  Widget build(BuildContext context) {
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
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.15,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.25,
                            child: Image.asset(
                              'assets/images/img_racket.png',
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          const Text(
                            'Are you new to Blockchain?',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          const SizedBox(
                            child: Text(
                              'Well then, welcome to the wonderful world of\n Blockchain! Press "Next" to get started.',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: const Color(0xFF27A8F0),
                                inactiveTrackColor: Colors.white,
                                thumbColor: Colors.white,
                                valueIndicatorColor: const Color(0xFF27A8F0),
                                inactiveTickMarkColor: Colors.white,
                              ),
                              child: Slider(
                                divisions: 2,
                                value: _value,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      _value = value;
                                    },
                                  );
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
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'Skilled',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'Expert',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
}
