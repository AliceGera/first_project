import 'package:flutter/material.dart';

class MotivationWidget extends StatefulWidget {
  final String name;
  final bool show;
  final Function() showOrHide;
  final String image;

  const MotivationWidget({
    Key? key,
    required this.name,
    required this.show,
    required this.image,
    required this.showOrHide,
  }) : super(key: key);

  @override
  State<MotivationWidget> createState() => _ContainerImgAndTitelState();
}

class _ContainerImgAndTitelState extends State<MotivationWidget> {
  final Color blue = const Color(0xFF1F7F99);
  final Color darkBlue = const Color(0xFF33A3CC);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        widget.showOrHide.call();
      },
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              color: widget.show ? Colors.transparent : blue,
              borderRadius: BorderRadius.circular(8),
            ),
            height: size.height * 0.265,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              color: widget.show ? blue : darkBlue,
              borderRadius: BorderRadius.circular(8),
            ),
            height: size.height * 0.25,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.03),
                Image.asset(
                  widget.image,
                  height: size.height * 0.11,
                ),
                SizedBox(height: size.height * 0.03),
                Text(
                  widget.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
