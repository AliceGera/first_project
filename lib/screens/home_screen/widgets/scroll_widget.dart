import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollWidget extends StatelessWidget {
  final String text;
  final String image;
  final String textTitle;
  final String textTitleStarted;

  const ScrollWidget(
      this.text, this.image, this.textTitle, this.textTitleStarted,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 9),
            child: Container(
              height: size.height * 0.23,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xFF27A8F0),
                ),
                color: const Color(0xFF3D61BF).withOpacity(0.5),
              ),
              child: Image.asset(image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              textTitle,
              style: TextStyle(
                color: const Color(0xFFFFFFFF).withOpacity(0.6),
                fontWeight: FontWeight.w700,
                fontSize: 11,
              ),
            ),
          ),
          Text(
            textTitleStarted,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
