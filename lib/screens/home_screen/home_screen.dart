import 'package:first_project/screens/home_screen/widgets/galaxy_widget.dart';
import 'package:first_project/screens/home_screen/widgets/learn_widget.dart';
import 'package:first_project/screens/home_screen/widgets/profile_widget.dart';
import 'package:first_project/screens/home_screen/widgets/scroll_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../first_version_blockper/firstVersionBlockper.dart';
import '../my_bank_screen/my_bank_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> text = [
      'History of Money',
      'What is Crypto...',
      'Is Crypto the Next...',
      'Is Crypto the Next...',
    ];
    List<String> image = [
      'assets/images/Frame.png',
      'assets/images/image2.png',
      'assets/images/image3.png',
      'assets/images/image3.png',
    ];
    List<String> textTitle = [
      'Block 1: Beginer',
      'Block 1: Beginer',
      'Block 1: Beginer',
      'Block 1: Beginer',
    ];
    List<String> textTitleStarted = [
      'Started on: Dec 12',
      'Started on: Dec 12',
      'Started on: Dec 12',
      'Started on: Dec 12',
    ];
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFF44C7FF),
                  const Color(0xFF213771).withOpacity(0.09),
                  const Color(0xFF203771).withOpacity(0.51),
                  const Color(0xFF203771).withOpacity(0.83),
                  const Color(0xFF203771),
                ],
              ),
              image: const DecorationImage(
                image: AssetImage("assets/images/image_backgraund.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  const ProfileWidget(),
                  const AndromedaWidget(),
                  const LearnWidget(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Next Lessons',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'See All',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),
                          ),
                          SvgPicture.asset('assets/images/image_vec.svg'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.05),
                  SizedBox(
                    height: size.height * 0.35,
                    child: ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ScrollWidget(
                          text[index],
                          image[index],
                          textTitle[index],
                          textTitleStarted[index],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/inviting_friends.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Explore Communities',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'See All',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),
                          ),
                          SvgPicture.asset('assets/images/image_vec.svg'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.05),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF27A8F0).withOpacity(0.6),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(13, 16, 13, 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: size.height * 0.05,
                                    child: Image.asset(
                                        'assets/images/profile_img.png')),
                                SizedBox(height: size.height * 0.02),
                                const Text(
                                  'Lorem ips dolor sit amet',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.01),
                                const Text(
                                  'Lorem ips dolor sit amet, coectetur adipisci elit, sed eiusmod tempor incidunt sit amet...',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 17),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF27A8F0).withOpacity(0.6),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(13, 16, 13, 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: size.height * 0.05,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('assets/images/profile.png'),
                                      Row(
                                        children: [
                                          Image.asset(
                                              'assets/images/comments.png'),
                                          const Text(
                                            '25 Comments',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 9,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: size.height * 0.02),
                                const Text(
                                  'Lorem ips dolor sit amet',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.01),
                                const Text(
                                  'Lorem ips dolor sit amet, coectetur adipisci elit, sed eiusmod tempor incidunt sit amet...',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: size.height*0.1),
                 /* Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: size.height * 0.3,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/image_back1.png"),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 17),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/image_back1.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),*/
                  SizedBox(
                    width: size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FirstVersionBlockperWidget()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
