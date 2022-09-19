import 'package:flutter/material.dart';

class AcceptLoan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 86),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE5E5E5),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: Offset(0, 9), // changes position of shadow
                ),
              ],
            ),
            child: Text(
              "¡Préstamo pre-concedido!",
              style: TextStyle(
                  color: Color(0xFF9EDC15),
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
          ClipPath(
            clipper: PathPainter2(),
            child:Container(
              width: screenSize.width * .05,
              height: screenSize.height * .01,
              color: Colors.white,)  ,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 32, 0, 8),
            child: Text(
              '300€',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w400,
                color: Color(0xFF9EDC15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 24),
            child: Text(
              'en 30 días',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color(0xFF9EDC15),
              ),
            ),
          ),
          Stack(
            alignment: Alignment(0, 0),
            children: [
              Container(
                width: double.infinity,
                height: screenSize.height * 0.1,
                // Color(0xFF9EDC15),
                //decoration:BoxDecoration(color: Color(0xFF9EDC15)),
                child: CustomPaint(
                  painter: PathPainter(),
                ),
              ),
              Image.asset(
                'assets/images/percent.png',
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            width: double.infinity,
            color: Color(0xFF9EDC15),
            child: const Text(
              'Confiamos en ti y te hemos concedido un\n préstamo de 300€ a devolver en un plazo\n de 30 días.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
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
      ..color = Color(0xFF9EDC15)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(
        size.width / 4, size.height / 1.6, size.width / 2, size.height / 2);
    path.lineTo(size.width / 2, size.height / 2);
    path.quadraticBezierTo(
        size.width * 3 / 4, size.height / 2.5, size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class PathPainter2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(size.width/2, 8)
      ..lineTo(size.width, 0)
     // ..lineTo(size.width/2, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
