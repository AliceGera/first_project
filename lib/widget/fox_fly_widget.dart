import 'package:flutter/material.dart';

class FoxFlyWidget extends StatelessWidget {
  const FoxFlyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/');
        },
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF3589C2),
                    Color(0xFF165380),
                  ],
                ),
              ),
            ),
            Image.asset(
              'assets/images/imgStars.png',
              alignment: const Alignment(0, 0),
              width: double.infinity,
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/FoxFly.png',
                    width: double.infinity,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 14),
                    child: Text(
                      'Stay motivated!',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  const Text(
                      'Learning can be hard - allow us to send you\n reminders about new lessons to keep your\n motivation high. ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Back',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
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
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(45, 15, 45, 15),
                            child: Text(
                              'Accept',
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
                  const Text(
                    'Remind me later',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
