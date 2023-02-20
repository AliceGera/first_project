import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AndromedaWidget extends StatelessWidget {
  const AndromedaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.width * 0.05),
        Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                SizedBox(height: size.height * 0.09),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        const Color(0xFF0252B3),
                        const Color(0xFF50C4F9).withOpacity(.3),
                      ],
                    ),
                    border: Border.all(
                        color: const Color(0xFF308AE3),
                        width: 1.0,
                        style: BorderStyle.solid),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14, 0, 14, 12),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: size.height * 0.01),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 6),
                              child: Text(
                                'Performance',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF69D8FA),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: Text(
                                'Andromeda',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFFFFFFF),
                                  shadows: [
                                    Shadow(
                                      color: Colors.indigo,
                                      offset: Offset(1, 2),
                                      blurRadius: 3,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: Text(
                                'Galaxy'.toUpperCase(),
                                style: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/star_in_home.svg',
                                ),
                                const Text(
                                  '100',
                                  style: TextStyle(
                                    color: Color(0xFFEEBB1C),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 13, 0, 0),
                          child: Container(
                            width: size.width * 0.002,
                            height: size.height * 0.1,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: size.width * 0.03),
                        SizedBox(
                          width: size.width * 0.3,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: size.height * .05),
                                  Image.asset('assets/images/points.png'),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/green_planet.png',
                                    height: size.height * .1,
                                  ),
                                  SizedBox(height: size.height * 0.015),
                                  Text(
                                    'Security '.toUpperCase(),
                                    style: const TextStyle(
                                      color: Color(0xFF27A8F0),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: size.height * 0.003),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFF0252B3)
                                          .withOpacity(.6),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 15,
                                        vertical: 4,
                                      ),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/images/lock_img.svg'),
                                          const Text(
                                            'Coming up',
                                            style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFF27A8F0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/group_circle.png',
                      height: size.height * 0.18,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.18,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF27A8F0),
                            border: Border.all(
                              color: const Color(0xFF69D8FA),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 6,
                              horizontal: 16,
                            ),
                            child: Text(
                              'Wallets',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
