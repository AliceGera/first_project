import 'package:first_project/presentation/screens/lesson_one/widget/column_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../screens/new_blockchain/new_blockchain_screen.dart';
import '../../../widget/CircularProgressIndicatorWidget.dart';
import '../income/income_screen.dart';
import 'bloc/lesson_one_screen_bloc.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class LessonOneScreen extends StatefulWidget {
  const LessonOneScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LessonOneScreen> createState() => _LessonOneScreenScreenState();
}

class _LessonOneScreenScreenState extends State<LessonOneScreen> {
  final videoPlayerController = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
  ChewieController? chewieController;
  final List<String> listImages = [
    'assets/images/read_lesson.svg',
    'assets/images/key_learnings.svg',
    'assets/images/rate_lesson.svg',
    'assets/images/share_lesson.svg',
  ];
  final List<String> listText = [
    'Read Lesson',
    'Key Learnings',
    'Rate Lesson',
    'Share Lesson',
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await videoPlayerController.initialize();
      chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        autoPlay: true,
        looping: true,
        allowFullScreen: false,
      );
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) =>
          LessonOneScreenBloc()..add(LoadLessonOneScreenEvent()),
      child: BlocBuilder<LessonOneScreenBloc, LessonOneScreenState>(
        builder: (context, state) {
          if (state is LessonOneScreenLoadingState ||
              state is LessonOneScreenInitialState) {
            return const CircularProgressIndicatorWidget();

          } else if (state is LessonOneScreenFailedState) {
            return const Center(
              child: Text(
                'ex',
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
            );
          } else if (state is LessonOneScreenSuccessState) {
            return GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Scaffold(
                backgroundColor: const Color(0xFF19547E),
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children:  [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 106),
                          child: Text(
                            'Lesson 1',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  backgroundColor: const Color(0xFF19547E),
                  centerTitle: true,
                  elevation: 0,
                ),
                body: SizedBox(
                  width: size.width,
                  child: Column(
                    children: [
                      SizedBox(height: size.height * 0.1),
                      const Text(
                        'What is a Digital\n Wallet? abie heiuty kai',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: size.height * 0.04),
                      Column(
                        children: [
                          if (chewieController != null) ...[
                            SizedBox(
                                height: size.height * 0.28,
                                child: Chewie(controller: chewieController!)),
                          ] else ...[
                            SizedBox(
                              height: size.height * 0.28,
                            ),
                          ],
                        ],
                      ),
                      SizedBox(height: size.height * 0.04),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ColumnWidget(listImages[index], listText[index]),
                            ColumnWidget(
                                listImages[index + 1], listText[index + 1]),
                            ColumnWidget(
                                listImages[index + 2], listText[index + 2]),
                            ColumnWidget(
                                listImages[index + 3], listText[index + 3]),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height * 0.15),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor: const Color(0xFF2A6D9C),
                              backgroundColor: const Color(0xFF2BBBFA),
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(48.0),
                                //side: BorderSide(color: Colors.red)
                              )),
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            child: Text('Mark As Completed'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          @override
          void dispose() {
            videoPlayerController.dispose();
            chewieController?.dispose();
            super.dispose();
          }
          return const SizedBox();
        },
      ),
    );
  }
}

/*Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                height: size.height*0.2,
                child: ListView.builder(
                  scrollDirection:Axis.horizontal,
                  itemCount: listText.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.07,
                            child: SvgPicture.asset(
                                listText[index]),
                          ),
                          const Text(
                            'Share\n Lesson',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),*/
