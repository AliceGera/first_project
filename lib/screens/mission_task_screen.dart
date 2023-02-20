import 'package:first_project/screens/rocket_widget.dart';
import 'package:flutter/material.dart';

import 'changed_widget.dart';

class MissionTaskWidget extends StatefulWidget {
  const MissionTaskWidget({Key? key}) : super(key: key);

  @override
  State<MissionTaskWidget> createState() => _MissionTaskWidgetState();
}

class _MissionTaskWidgetState extends State<MissionTaskWidget> {
  bool isRocketShow = false;

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF3382BB),
                Color(0xFF368DC6),
                Color(0xFF203771),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.05),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(
                        top: size.height * 0.07,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.9),
                          width: 1,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color(0xFFFFFFFF).withOpacity(0.6),
                            const Color(0x6BB7E4FA).withOpacity(0.42),
                            const Color(0x8F56BCEC).withOpacity(0.56),
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: size.height * 0.1),
                          const Text(
                            'STARDUST',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: size.height * 0.05),
                          Text(
                            'Mission Task',
                            style: TextStyle(
                              shadows: const [
                                Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -13),
                                ),
                              ],
                              color: Colors.transparent,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white.withOpacity(0.5),
                              decorationThickness: 1,
                            ),
                          ),
                          SizedBox(height: size.height * 0.015),
                          const Text(
                            'This is the time to buy your first\n hardware wallet',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: size.height * 0.05),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/stars.png',
                          height: size.height * 0.1,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          'assets/images/img300.png',
                          height: size.height * 0.07,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ],
                ),
                ChangedWidget(
                  showOrHide: () {},
                ),
                /*isRocketShow ? RocketWidget() :  ChangedWidget(
                 showOrHide: () {
                   setState(() {
                     isRocketShow =true;
                   });
                 },
               ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
