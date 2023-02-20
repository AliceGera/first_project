import 'package:first_project/screens/missions_screen/bloc/missions_screen_bloc.dart';
import 'package:first_project/screens/missions_screen/widget/missionsWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widget/CircularProgressIndicatorWidget.dart';

class MissionsScreen extends StatelessWidget {
  const MissionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => MissionsScreenBloc()
        ..add(
          LoadMissionsScreenEvent(),
        ),
      child: BlocBuilder<MissionsScreenBloc, MissionsScreenState>(
        builder: (context, state) {
          if (state is MissionsScreenLoadingState ||
              state is MissionsScreenInitialState) {
            return const CircularProgressIndicatorWidget();
          } else if (state is MissionsScreenFailedState) {
            return const Center(
              child: Text(
                'ex',
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
            );
          } else if (state is MissionsScreenSuccessState) {
            return SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: const Color(0xFF3589C2),
                  centerTitle: true,
                  elevation: 0,
                  title: const Text(
                    'Back',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                backgroundColor: const Color(0xFF3589C2),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height * 0.07),
                        if (state.missionsListPending.isNotEmpty) ...[
                          MissionsWidget(
                            missionsList: state.missionsListPending,
                            isMissionsPending: true,
                          ),
                        ],
                        if (state.missionsListProcessing.isNotEmpty) ...[
                          SizedBox(height: size.height * 0.03),
                          MissionsWidget(
                            missionsList: state.missionsListProcessing,
                            isMissionsPending: false,
                          ),
                        ],
                        SizedBox(height: size.height * 0.05),
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
