import 'package:first_project/screens/perfomance_screen/models/planet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readmore/readmore.dart';
import '../first_version_blockper/firstVersionBlockper.dart';
import 'bloc/lessons_screen_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LessonsWidget extends StatelessWidget {
  final int planetId;

   const LessonsWidget({
     required this.planetId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String lesson;
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => LessonsScreenBloc()
        ..add(
          LoadLessonsEvent(planetId),
        ),
      child: BlocBuilder<LessonsScreenBloc, LessonsScreenState>(
        builder: (context, state) {
          if (state is LessonsScreenLoadingState ||
              state is LessonsScreenInitialState) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.blue),
            );
          } else if (state is LessonsScreenFailedState) {
            return const Center(
              child: Text(
                'I\'m maks and i\'m kakash',
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
            );
          } else if (state is LessonsScreenSuccessState) {
            return SafeArea(
              child: Scaffold(
                backgroundColor: const Color(0xFF3589C2),
                appBar: AppBar(
                  backgroundColor: const Color(0xFF3589C2),
                  centerTitle: true,
                  elevation: 0,
                  title: const Text(
                    'Lessons',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                body: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(height: size.height * 0.05),
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Row(
                          children: [
                            Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  alignment: Alignment.topRight,
                                  width: 15,
                                  color: const Color(0xFF0775B2),
                                  child: const Text(
                                    '',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF08639E),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child:  Text(
                                    state.galaxy?.title?? '',
                                   // 'Andromeda Galaxy',
                                    //state.??'',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  alignment: Alignment.topRight,
                                  width: 15,
                                  color: const Color(0xFF27A6ED),
                                  child: const Text(
                                    '',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 4),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF0775B2),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(14),
                                      bottomRight: Radius.circular(14),
                                    ),
                                  ),
                                  child:  Text(
                                    state.planet?.title ??'',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 4),
                              decoration: const BoxDecoration(
                                color: Color(0xFF27A6ED),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(14),
                                  bottomRight: Radius.circular(14),
                                ),
                              ),
                              child:  Text(
                                state.lesson?.lessonGroupTitle?? '',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.3),
                              width: 1,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                const Color(0xFF56BCEC).withOpacity(0.4),
                                const Color(0xFF3589C2).withOpacity(0.1),
                                const Color(0xFF56BCEC).withOpacity(0.3),
                              ],
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 15, 40, 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                       Text(
                                        state.lesson?.title?? '',
                                         style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: size.height * 0.07),
                                       Text(
                                        '${state.finishedLessons} Lessons remaning',
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: size.height * 0.02),
                                      LinearProgressIndicator(
                                        value: state.finishedLessons/ (state.planet?.lessons?.length ?? 0),
                                        color: Colors.white,
                                        backgroundColor:
                                            Colors.white.withOpacity(0.3),
                                        semanticsLabel:
                                            'Linear progress indicator',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1,
                                        ),
                                      ),
                                      child: const Text(
                                        'Unlocked',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: size.height * 0.02),
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(8),
                                    ),
                                    child: Image.asset(
                                      'assets/images/planet.png',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/Flag.svg',
                                ),
                                const SizedBox(width: 25),
                                SvgPicture.asset(
                                  'assets/images/timeCircle.svg',
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    '7 min read',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.03),
                             Text(
                              state.lesson?.title?? '',
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                             Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: ReadMoreText(
                                state.lesson?.description?? '',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                                trimLines: 3,
                                colorClickableText: Colors.white,
                                trimMode: TrimMode.Line,
                                trimCollapsedText: '\n\nRead more',
                                trimExpandedText: '\n\nShow less',
                                lessStyle: const TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                                moreStyle: const TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.04),
                            InkWell(
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 32, vertical: 18),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF27A8F0),
                                  borderRadius: BorderRadius.circular(48),
                                ),
                                child: Column(
                                  children: const [
                                    Text(
                                      'Watch Lesson',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const FirstVersionBlockperWidget()));
                              },
                            ),
                            SizedBox(height: size.height * 0.04),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 18),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.4),
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Read Lesson',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white.withOpacity(0.4),
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
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
