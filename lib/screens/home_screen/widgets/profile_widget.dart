import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return  Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Image.asset('assets/images/img.png'),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Text(
                          'Angelica Jackson',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                                'assets/images/Vector.svg'),
                            const Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                '25',
                                style: TextStyle(
                                  color: Color(0xFFEEBB1C),
                                ),
                              ),
                            ),
                            SizedBox(width: size.width * 0.03),
                            SvgPicture.asset(
                                'assets/images/star_in_home.svg'),
                            const Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                '10000',
                                style: TextStyle(
                                  color: Color(0xFFEEBB1C),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    'Level ',
                    style: TextStyle(
                      color:
                      const Color(0xFF69D8FA).withOpacity(.6),
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    'Pro ',
                    style: TextStyle(
                      color:
                      const Color(0xFFFFFFFF).withOpacity(.6),
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );}}