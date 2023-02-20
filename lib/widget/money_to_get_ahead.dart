//Money to get ahead
import 'package:flutter/material.dart';

class MoneyToGetAhead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/pinkbg.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                '¡Dinero para salir adelante, no para quedarte atrás!',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 6),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Solicita tu línea de crédito y úsala siempre que quieras. Disfrútala por una cuota mensual ajustada a tu bolsillo',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 16,
              ),
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: const [
                    Text(
                      'Hasta ',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '700€',
                      style: TextStyle(
                        fontSize: 56,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Pago mensual máximo',
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFF4C4C4C),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '25 €',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF4C4C4C),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
