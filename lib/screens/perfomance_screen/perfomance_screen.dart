import 'package:first_project/screens/perfomance_screen/widget/container_text_in_oval_widget.dart';
import 'package:first_project/screens/perfomance_screen/widget/one_part_of_screen_widget.dart';
import 'package:first_project/screens/perfomance_screen/widget/performance_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widget/circular_progress_indicator_widget.dart';
import '../../widget/failed_widget.dart';
import '../home_screen/home_screen.dart';
import 'bloc/perfomance_screen_bloc.dart';

class PerformanceScreen extends StatefulWidget {
  const PerformanceScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<PerformanceScreen> createState() => _PerformanceScreenState();
}

class _PerformanceScreenState extends State<PerformanceScreen> {
  final List<String> textInOval = [
    'Andromeda',
    'Pinwheel',
    'Whirlpool',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) =>
          PerformanceScreenBloc()..add(LoadPerformanceScreenEvent()),
      child: BlocBuilder<PerformanceScreenBloc, PerformanceScreenState>(
        builder: (context, state) {
          if (state is PerformanceScreenLoadingState ||
              state is PerformanceScreenInitialState) {
            return const CircularProgressIndicatorWidget();

          } else if (state is PerformanceScreenFailedState) {
            return const FailedWidget();
          } else if (state is PerformanceScreenSuccessState) {
            return SafeArea(
              child: Scaffold(
                backgroundColor: const Color(0xFF3589C2),
                appBar: AppBar(
                  backgroundColor: const Color(0xFF3589C2),
                  centerTitle: true,
                  elevation: 0,
                  title: const Text(
                    'Performance',
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SizedBox(height: size.height * 0.1),
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFF69D8FA),
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 80),
                                    Container(
                                      width: size.width * 0.4,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 15,
                                        vertical: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1.0,
                                          style: BorderStyle.solid,
                                        ),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Block 3',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'XP 500',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.015),
                                    const Text(
                                      'Activated',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.025),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        children: [
                                          OnePartOfScreenWidget(textInOval),
                                          ListView.builder(
                                            itemCount: state
                                                    .data
                                                    .galaxyList?[0]
                                                    .planets?[0]
                                                    .lessons
                                                    ?.length ??
                                                0,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemBuilder: (
                                              BuildContext context,
                                              int index,
                                            ) {
                                              return PerformanceWidget(
                                                status: state
                                                    .data
                                                    .galaxyList?[0]
                                                    .planets?[0]
                                                    .lessons?[index]
                                                    .lessonStatusType,
                                                text: state
                                                        .data
                                                        .galaxyList?[0]
                                                        .planets?[0]
                                                        .lessons?[index]
                                                        .title ??
                                                    '',
                                                id: state.data.galaxyList?[0]
                                                        .planets?[0].id ??
                                                    0,
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Image.asset(
                                'assets/images/planet_performance.png',
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.03),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                const HomeScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF69D8FA),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(16, 9, 16, 9),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/rocketContainer.png',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 24),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'You Next Destination',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          'Pinwheel Galaxy',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
