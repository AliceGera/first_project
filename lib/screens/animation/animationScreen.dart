import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationWidget extends StatelessWidget {
  const AnimationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Lottie.asset(
          'assets/animations/data.json',
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
          repeat: true,
        ),
      ),
    );
  }
}
