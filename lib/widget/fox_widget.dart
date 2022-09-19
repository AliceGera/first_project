import 'package:flutter/material.dart';

class FoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(),
      body: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/todo');
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
              padding: const EdgeInsets.only(top: 40),
              alignment: Alignment.center,
              child: Column(
                children: const [
                  Text(
                    'Keep going!',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  Text('you are one step\n closer',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/fox.png',
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
