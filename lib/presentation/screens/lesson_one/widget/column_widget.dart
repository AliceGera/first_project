import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ColumnWidget extends StatelessWidget {
  //const ColumnWidget(String listText);
  final String listImages;
   final String listText;

  const ColumnWidget(this.listImages,this.listText, {Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: screenSize.height * 0.07,
          child: SvgPicture.asset(
              listImages),
        ),
         Text(
          listText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
