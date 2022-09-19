import 'package:flutter/material.dart';

import 'changed_widget.dart';

class RocketWidget extends StatefulWidget {
  const RocketWidget({Key? key}) : super(key: key);

  @override
  State<RocketWidget> createState() => _RocketWidgetState();
}

class _RocketWidgetState extends State<RocketWidget> {
  @override
  final bool isRocketShow = false;
  late AnimationController _controller;
  late Animation<Size> _myAnimation;

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 56),
      child: Column(

      ),
    );
  }
}
