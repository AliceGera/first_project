import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../perfomance_screen/perfomance_screen.dart';
import 'bloc/request_screen_bloc.dart';

class RequestWidget extends StatefulWidget {
  const RequestWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<RequestWidget> createState() => _RequestWidgetState();
}

class _RequestWidgetState extends State<RequestWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RequestScreenBloc()..add(LoadRequestScreenEvent()),
      child: BlocBuilder<RequestScreenBloc, RequestScreenState>(
        builder: (context, state) {
          if (state is RequestScreenLoadingState ||
              state is RequestScreenInitialState) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.blue),
            );
          } else if (state is RequestScreenFailedState) {
            return const Center(
              child: Text(
                'I\'m maks and i\'m kakash',
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
            );
          } else if (state is RequestScreenSuccessState) {
            return SafeArea(
              child: Scaffold(
                body: Column(
                  children: [
                    Text(
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.green),
                      state.data.listPost.first.body,
                    ),
                    Text(
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.deepOrange),
                      state.data.listPost.first.title,
                    ),
                    Text(
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      state.data.listPost.first.userId.toString(),
                    ),
                    Text(
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      state.data.listPost.first.id.toString(),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF27A8F0),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        onPressed: () {
                          // widget.showOrHide.call();
                          /* Navigator.pop(context);*/

                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>    const PerformanceScreen()));

                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
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
                  ],
                ),
              ),
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
