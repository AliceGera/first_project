import 'package:first_project/widget/accept_loan.dart';
import 'package:first_project/widget/call_widget.dart';
import 'package:first_project/widget/description_widget.dart';
import 'package:first_project/widget/fox_fly_widget.dart';
import 'package:first_project/widget/fox_widget.dart';
import 'package:first_project/widget/money_to_get_ahead.dart';
import 'package:first_project/widget/moneymanLoan.dart%20';
import 'package:flutter/material.dart';
import './widget/fox_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> textOf = <String>[
    "Rellena tu \n solicitud y elige\n la cantidad que \nnecesitas",
    "Recibe el dinero \nsolicitado en la \ncuenta de tu\n banco",
    "¡Disfruta \nde tu nueva línea\n de \ncrédito!"
  ];

  @override
  Widget build(BuildContext context) {
    /*final screenSize = MediaQuery.of(context).size;*/
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 57, 148, 205),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Lessons',
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  Image.asset('assets/images/racet.png'),
                  SizedBox(width: 2),
                  Text(
                    '25',
                    style: TextStyle(color: Color(0xFFEEBB1C), fontSize: 14),
                  ),
                  SizedBox(width: 16),
                  Image.asset('assets/images/star.png'),
                  SizedBox(width: 2),
                  Text(
                    '10',
                    style: TextStyle(color: Color(0xFFEEBB1C), fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        /*body: Column(
          children: [
            */
        /*
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 18.0),
              padding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 22.0),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(8),
                color: Colors.transparent,
              ),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Image.asset('assets/images/image1.png'),
                      SizedBox(width: 10),
                      Text(
                        "Wallets",
                        style: TextStyle(color: Colors.white, fontSize: 26),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Planet detail have collected lorem ipsum dole ras satter lorem ipsum dole dgras lorem ipsum dole ras satter.",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 18.0),
              padding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 22.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0x99FFFFFF),
                    Color(0x6BB7E4FA),
                    Color(0x8F56BCEC),
                  ],
                  stops: [0.005, 0.4, 0.9],
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 3.0,
                          horizontal: 14.0,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF27a8f0),
                          border: Border.all(
                            color: Colors.white,
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Block 1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const Text(
                        "Unlocked",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        "BEGINNER",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "2 Lessons remaning",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Container(
                    //  decoration: BorderRadius.circular(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: LinearProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color(0xFF27a8f0),
                        ),
                        backgroundColor: Colors.white,
                        value: 0.3,
                        semanticsLabel: 'Linear progress indicator',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xFF8CC01A),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //textDirection: alignment.topCenter,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Ofertas exclusivas',
                              style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              '¡Cuanto más compras, menos pagas en tu préstamo!',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.white,
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Ver todas',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF9EDC15)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              /////////////////////////////////////////////////////////////////
              color: const Color(0xFF8CC01A),
              height: 217,
              child: ListView(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 8.0),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 6),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Rectangle.png',
                            height: 100,
                          ),
                          Text(
                            'Groupon',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF4C4C4C),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Category',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF9B9B9B),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          const Text(
                            '15%',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF9EDC15),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 8.0),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 6),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Rectangle.png',
                            height: 100,
                          ),
                          const Text(
                            'Groupon',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF4C4C4C),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Category',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF9B9B9B),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            '15%',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF9EDC15),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 8.0),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 6),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Rectangle.png',
                            height: 100,
                          ),
                          const Text(
                            'Groupon',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF4C4C4C),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Category',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF9B9B9B),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            '15%',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF9EDC15),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 8.0),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 6),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Rectangle.png',
                            height: 100,
                          ),
                          const Text(
                            'Groupon',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF4C4C4C),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Category',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF9B9B9B),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            '15%',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF9EDC15),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 8.0),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 6),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Rectangle.png',
                            height: 100,
                          ),
                          const Text(
                            'Groupon',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF4C4C4C),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Category',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF9B9B9B),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            '15%',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF9EDC15),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 8.0),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 6),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Rectangle.png',
                            height: 100,
                          ),
                          const Text(
                            'Groupon',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF4C4C4C),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Category',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF9B9B9B),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            '15%',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF9EDC15),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            MoneyToGetAhead(),
            MoneymanLoanWidget(),
            DescriptionWidget(textOf),
            CallWidget(),
            AcceptLoan(),*//*
            FoxWidget(),
          ],
        ),*/
        body:
        //FoxWidget(),
        FoxFlyWidget(),
      ),
    );
  }
}


