import 'package:first_project/screens/ContainerImgTitel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widget/circular_progress_indicator_widget.dart';
import '../../widget/failed_widget.dart';
import '../request/request_screen.dart';
import 'bloc/motivations_screen_bloc.dart';

class MotivationsScreen extends StatefulWidget {
  const MotivationsScreen({Key? key}) : super(key: key);

  @override
  State<MotivationsScreen> createState() => _MotivationsScreenState();
}

class _MotivationsScreenState extends State<MotivationsScreen> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
        create: (context) =>
            MotivationsScreenBloc()..add(LoadMotivationsScreenEvent()),
        child: BlocBuilder<MotivationsScreenBloc, MotivationsScreenState>(
          builder: (context, state) {
            if (state is MotivationsScreenLoadingState ||
                state is MotivationsScreenInitialState) {
              return const CircularProgressIndicatorWidget();
            } else if (state is MotivationsScreenFailedState) {
              return const FailedWidget();
            } else if (state is MotivationsScreenSuccessState) {
              return SafeArea(
                child: Scaffold(
                  body: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF3589C2),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 38),
                      child: Column(
                        children: [
                          SizedBox(height: size.height * 0.1),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'What are your motivations',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: MotivationWidget(
                                  show: state.data.boolFalse[index],
                                  image: state.data.images[index],
                                  showOrHide: () {
                                    setState(() {
                                      state.data.boolFalse[index] =
                                          !state.data.boolFalse[index];
                                    });
                                  },
                                  name: state.data.mainText[index],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: MotivationWidget(
                                  show: state.data.boolFalse[index + 1],
                                  image: state.data.images[index + 1],
                                  showOrHide: () {
                                    setState(() {
                                      state.data.boolFalse[index + 1] =
                                          !state.data.boolFalse[index + 1];
                                    });
                                  },
                                  name: state.data.mainText[index + 1],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: MotivationWidget(
                                  show: state.data.boolFalse[index + 2],
                                  image: state.data.images[index + 2],
                                  showOrHide: () {
                                    setState(() {
                                      state.data.boolFalse[index + 2] =
                                          !state.data.boolFalse[index + 2];
                                    });
                                  },
                                  name: state.data.mainText[index + 2],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: MotivationWidget(
                                  show: state.data.boolFalse[index + 3],
                                  image: state.data.images[index + 3],
                                  showOrHide: () {
                                    setState(
                                      () {
                                        state.data.boolFalse[index + 3] =
                                            !state.data.boolFalse[index + 3];
                                      },
                                    );
                                  },
                                  name: state.data.mainText[index + 3],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.05),
                          const Text(
                            'None of the above',
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                    color: Colors.white, offset: Offset(0, -5))
                              ],
                              color: Colors.transparent,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              decorationThickness: 1.5,
                            ),
                          ),
                          SizedBox(height: size.height * 0.05),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'Back',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF27A8F0),
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const RequestWidget()));

                                  /*  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const MissionTaskWidget()));
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const MissionTaskWidget()));
                                {
                                  // const StakingWeb();
                                  setState(() {});
                                }*/
                                },
                                child: const Padding(
                                  padding: EdgeInsets.fromLTRB(45, 15, 45, 15),
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
                            ],
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
        ));
  }
}
