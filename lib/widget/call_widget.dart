import 'package:flutter/material.dart';

class CallWidget extends StatelessWidget {
  const CallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 116),
            decoration: const BoxDecoration(
              color: Color(0xFF9EDC15),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset(
                'assets/images/imgCall.png',
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF9EDC15),
            ),
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Text(
                'Notificaciones',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: screenSize.height * 0.1,
            child: CustomPaint(
              painter: PathPainter(),
            ),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  '¿Todavía no recibes nuestros\n descuentos exclusivos?',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 26,
                    color: Color(0xFF737373),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'Modifica tus preferencias en ajustes\n y comienza a recibir nuestras notificaciones',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFF737373),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xFFFF9D00),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Respond to button press
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 27, vertical: 16),
                    child: Text(
                      "¡Quiero recibir notificaciones!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'En otro momento',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0xFFFF9D00),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color(0xFF9EDC15)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(size.width / 2, size.height, size.width, 0);
    path.lineTo(0, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
