import 'package:flutter/material.dart';

import 'improve_conditions_moneyman_widget.dart';

class ChangedWidget extends StatefulWidget {
  final Function() showOrHide;

  const ChangedWidget({
    Key? key,
    required this.showOrHide,
  }) : super(key: key);

  @override
  State<ChangedWidget> createState() => _ChangedWidgetState();
}

class _ChangedWidgetState extends State<ChangedWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.width * 0.05),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0xFF3382BB),
              width: 2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Image.asset('assets/images/imgColdWallet.png'),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Your Task',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Buy your cold wallet',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: size.height * 0.075),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38),
          child: Column(
            children: [
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

                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>    ImproveConditionsWidget()));

                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Take the Mission',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.075),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  InkWell(

                    child: Text(

                      'Skip',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),

                    ),
                    //onTap: () {print("value of your text");},

                  ),
                  InkWell(
                    child: Text(
                      'Remind me later',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF27A8F0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
