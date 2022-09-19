import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImportantOpinionScreen extends StatelessWidget {
  const ImportantOpinionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF3589C2),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * 0.15),
                  const Text(
                    'Your opinion is really\n important for us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  const Text(
                    'it will help us to improve your experience \n at Blockper',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: size.height * .04),
                  TextField(
                      style: TextStyle(height: size.height * .018),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Share your opinion here",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white.withOpacity(.3),
                        ),
                      )),
                  SizedBox(height: size.height * .2),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(
                          color: Colors.white,
                          width: 1.0, // Underline thickness
                        ))
                    ),
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                //  SizedBox(height: size.height * .2),
                 // Text('Skip',style: TextStyle(fontSize: 14,color: Colors.white,decoration: TextDecoration.underline,),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
