import 'package:first_project/screens/text_field_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ImproveConditionsWidget extends StatefulWidget {
  const ImproveConditionsWidget({Key? key}) : super(key: key);

  @override
  State<ImproveConditionsWidget> createState() =>
      _ImproveConditionsWidgetState();
}

class _ImproveConditionsWidgetState extends State<ImproveConditionsWidget> {
  final List<String> text = [
    'En tu nueva\nlínea de crédito',
    'Cuota máxima\n mensual',
    'Tasa de interés\nmás baja',
    'Pago anticipado\n sin coste',
  ];

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return const Color(0xFFD3D2D2);
  }

  bool isChecked = false;
  bool isChecked1 = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const index = 0;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: const Color(0xFFF5F5F5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.1),
                  const Text(
                    'Te mejoramos \nlas condiciones',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF4C4C4C),
                      fontWeight: FontWeight.w600,
                      fontSize: 36,
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  const Text(
                    '¡Recibe el dinero directamente \nen tu cuenta en segundos!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFF9D00),
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: size.height * 0.04),
                  Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: size.height * 0.15,
                            width: size.width * 0.26,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(53),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xFF8FCF00),
                                  Color(0xFFF8F8F8),
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Hasta',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  '700€',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Text(
                              text[index],
                              style: const TextStyle(
                                color: Color(0xFF4C4C4C),
                                fontWeight: FontWeight.w600,
                                fontSize: 26,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 84),
                        child: Row(
                          children: [
                            Container(
                              height: size.height * 0.15,
                              width: size.width * 0.26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(53),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[
                                    Color(0xFF8FCF00),
                                    Color(0xFFF8F8F8),
                                  ],
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    '25',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    '€/mes',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 24),
                              child: Text(
                                text[index + 1],
                                style: const TextStyle(
                                  color: Color(0xFF4C4C4C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 26,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 164),
                        child: Row(
                          children: [
                            Container(
                              height: size.height * 0.15,
                              width: size.width * 0.26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(53),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[
                                    Color(0xFF8FCF00),
                                    Color(0xFFF8F8F8),
                                  ],
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    '20x',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 32,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 24),
                              child: Text(
                                text[index + 2],
                                style: const TextStyle(
                                  color: Color(0xFF4C4C4C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 26,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 246),
                        child: Row(
                          children: [
                            Container(
                              height: size.height * 0.15,
                              width: size.width * 0.26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(53),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[
                                    Color(0xFF8FCF00),
                                    Color(0xFFF8F8F8),
                                  ],
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    '0€',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 48,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 24),
                              child: Text(
                                text[index + 3],
                                style: const TextStyle(
                                  color: Color(0xFF4C4C4C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 26,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  SizedBox(
                    width: size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFFF9D00),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TextFieldScreen()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(
                            () {
                              isChecked = value!;
                            },
                          );
                        },
                      ),
                      Expanded(
                        child: Column(
                          children: const [
                            Text(
                              'Acepto que IDFinance Spain, S.A.U. comunique mis datos a IDFinance Plazo, S.L.U.  con la finalidad de gestionar la relación contractua.',
                              style: TextStyle(
                                color: Color(0xFF4C4C4C),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        //splashRadius:splashRadius.hashCode.
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked1,
                        onChanged: (bool? value) {
                          setState(
                            () {
                              isChecked1 = value!;
                            },
                          );
                        },
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            RichText(
                              text: const TextSpan(
                                //text: 'Al solicitar Plan Cash, aceptas las ',
                                style: TextStyle(
                                  color: Color(0xFF4C4C4C),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                                // style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        'Al solicitar Plan Cash, aceptas las ',
                                  ),
                                  TextSpan(
                                    text: ' condiciones de la tarjeta Plazo',
                                    style: TextStyle(
                                      color: Color(0xFF9EDC15),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  TextSpan(text: ' la'),
                                  TextSpan(
                                    text: ' política de privacidad ',
                                    style: TextStyle(
                                      color: Color(0xFF9EDC15),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  TextSpan(text: ' y las'),
                                  TextSpan(
                                    text: ' condiciones de Pecunpay.',
                                    style: TextStyle(
                                      color: Color(0xFF9EDC15),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
