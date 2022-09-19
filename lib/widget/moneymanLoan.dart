import 'package:flutter/material.dart';

class MoneymanLoanWidget extends StatelessWidget {
  const MoneymanLoanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF5F5F5),
      ),
      child: Column(
        children: [
          const SizedBox(height: 6),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            margin: EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color(0xFFF5F5F5),
              image: DecorationImage(
                image: AssetImage("assets/images/Vector198.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: const Text(
              'La línea de crédito de Plazo es 9 veces más barata que la de Moneyman',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
                color: Color(0xFF4C4C4C),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Stack(
            // textDirection: ,
            //alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.only(top: 34, bottom: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Color(0xFFFF9D00),
                  ),
                  color: Color(0xFFFFFFFF),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xFFFF9D00),
                            ),
                            margin: const EdgeInsets.only(left: 8),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 12,
                            ),
                            child: Column(
                              children: const [
                                Text(
                                  'Solicitando',
                                  style: TextStyle(
                                    color: Color(0xFF955C00),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  '700€',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 36,
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 8),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xFFFF9D00).withOpacity(0.15),
                            ),
                            child: Column(
                              children: const [
                                Text(
                                  'Pagarás',
                                  style: TextStyle(
                                    color: Color(0xFF955C00),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '940€',
                                  style: TextStyle(
                                    color: Color(0xFFFF9D00),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 36,
                                  ),
                                ),
                                Text(
                                  'en 1 mes',
                                  style: TextStyle(
                                    color: Color(0xFF955C00),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                   /* Image.asset(
                      "assets/images/arrow.png",
                      width: MediaQuery.of(context).size.width * 0.13,
                    ),*/
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                padding: const EdgeInsets.symmetric(vertical: 4),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  ),
                  border: Border.all(
                    color: Color(0xFFFF9D00),
                    width: 1,
                  ),
                  color: Color(0xFFFF9D00),
                ),
                child: const Text(
                  'Préstamo de Moneyman',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    //backgroundColor: Color(0xFFFF9D00)
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
