
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'container_text_in_oval_widget.dart';

class OnePartOfScreenWidget extends StatelessWidget {

  final List<String> textInOval;

  const OnePartOfScreenWidget( this.textInOval, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            TextInOvalWidget(
                textInOval: textInOval[0]),
            const SizedBox(width: 10),
            TextInOvalWidget(
                textInOval: textInOval[1]),
            const SizedBox(width: 10),
            TextInOvalWidget(
                textInOval: textInOval[2]),
          ],
        ),
        SizedBox(height: size.height * 0.02),
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Digital Wallets',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Text(
              '2 Lessons remaning',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.015),
        const LinearProgressIndicator(
          backgroundColor: Color(0xFFFFFFFF),
          value: 0.3,
          semanticsLabel:
          'Linear progress indicator',
        ),
        SizedBox(height: size.height * 0.035),

      ],
    );
  }
}
