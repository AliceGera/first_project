import 'package:first_project/screens/perfomance_screen/data/lesson_status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../lessons_screen/lessons_screen.dart';
import '../models/lesson.dart';


class PerformanceWidget extends StatelessWidget {
  final LessonStatusType? status;
  final String text;
  final int id;

  const PerformanceWidget(
      {Key? key, required this.status, required this.text, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LessonsScreen(
                planetId: id,
              ),
            ),
          );
        },
        child: Container(
          height: size.height * 0.06,
          width: size.width,
          decoration: BoxDecoration(
            color: status == LessonStatusType.pending
                ? const Color(0xFF69D8FA).withOpacity(0.15)
                : status == LessonStatusType.finished
                    ? const Color(0xFF69D8FA).withOpacity(0.15)
                    : const Color(0xFFF3DCDE),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
                color: status == LessonStatusType.unwatched
                    ? const Color(0xFFFF8686)
                    : Colors.transparent),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width * 0.4,
                      child: Text(
                        text,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: status == LessonStatusType.unwatched
                              ? const Color(0xFFFF8686)
                              : const Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            status?.name.toUpperCase() ?? '',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: status == LessonStatusType.finished
                                  ? const Color(0xFFFFFFFF)
                                  : status == LessonStatusType.pending
                                      ? Colors.transparent
                                      : const Color(0xFFFF8686),
                            ),
                          ),
                        ),
                        Image.asset(
                            'assets/images/${status == LessonStatusEnum.notFinish ? "information.png" : status == LessonStatusEnum.completed ? "check.png" : "lock.png"}'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
