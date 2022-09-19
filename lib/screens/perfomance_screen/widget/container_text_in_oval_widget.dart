

import 'package:flutter/cupertino.dart';

class TextInOvalWidget extends StatelessWidget {

  final String textInOval;

  const TextInOvalWidget({Key? key, required this.textInOval}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        padding: const EdgeInsets
            .symmetric(
            horizontal: 18,
            vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFFFFFFF),
            width: 1.0,
            style: BorderStyle.solid,
          ),
          borderRadius:
          BorderRadius.circular(
              18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Text(
              textInOval,
              style: const TextStyle(
                fontSize: 12,
                fontWeight:
                FontWeight.w500,
                color: Color(0xFFFFFFFF),
                //color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
