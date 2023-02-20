import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LearnWidget extends StatelessWidget {
  const LearnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height * 0.02),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xFFFFFFFF).withOpacity(.2),
                const Color(0xFFB7E4FA).withOpacity(.2),
                const Color(0xFF3D61BF).withOpacity(.2),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF10204D).withOpacity(0.22),
                spreadRadius: 8,
                blurRadius: 9,
                offset: const Offset(1, 5), // changes position of shadow
              ),
            ],
            border: Border.all(
              color: const Color(0xFF69D8FA),
            ),
          ),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/images/Info_duotone_line.svg'),
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    'Learn',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: size.height * 0.05),
      ],
    );
  }
}
