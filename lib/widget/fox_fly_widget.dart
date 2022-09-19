import 'package:flutter/material.dart';

class FoxFlyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/');
        },
        child: Stack(
          //width: double.infinity,
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
              alignment: Alignment(0, 0),
              width: double.infinity,
            ),
            Container(
              // padding: EdgeInsets.only(top:),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/FoxFly.png',
                    //alignment: Alignment(0, 0),
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: Text(
                      'Stay motivated!',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  Text(
                      'Learning can be hard - allow us to send you\n reminders about new lessons to keep your\n motivation high. ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Back',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF27A8F0), // background
                            onPrimary: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ), // foreground
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(45, 15, 45, 15),
                            child: Text('Accept',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Remind me later',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,decoration: TextDecoration.underline,
                      //TextDecoration.underline
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
