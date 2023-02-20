import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../important_opinion/important_opinion_screen.dart';

class FirstVersionBlockperWidget extends StatelessWidget {
  const FirstVersionBlockperWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          color: const Color(0xFF3589C2),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.1),
                Image.asset('assets/images/superFox.png'),
                SizedBox(height: size.height * 0.04),
                const Text(
                  'This first version of Cryptor\n is built for beginners.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                const Text(
                  'But hey, all this means for you is that\nyou’ll advance faster and collect more \nStardust, right? 😉',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                const Text(
                  'Advanced lessons are on the way. Stick around, you’ll learn something new. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                const Text(
                  'We promise.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const Expanded(child: SizedBox()),
                InkWell(
                  child: Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                    decoration: BoxDecoration(
                      color: const Color(0xFF27A8F0),
                      borderRadius: BorderRadius.circular(48),
                      border: Border.all(
                        color: const Color(0xFF27A8F0),
                      ),
                    ),
                    child: Column(
                      children: const [
                        Text(
                          'OK',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap:  () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => const ImportantOpinionScreen()));
                  },
                ),
                SizedBox(height: size.height * 0.13),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
