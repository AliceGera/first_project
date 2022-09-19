import 'package:first_project/screens/request/request_screen.dart';
import 'package:flutter/material.dart';

import 'package:validators/validators.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({Key? key}) : super(key: key);

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  String? validationError;
  bool isCorrect = false;
  final String name = "enter your email";

  String? validateEmail(String? value) {
    if (value != null) {
      if (value.length > 5 && value.contains('@') && value.endsWith('.com')) {
        return null;
      } else if (value.isEmpty) {
        return name;
      }
      return 'Enter a Valid Email Address';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFE5E5E5),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 2,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Accede a tu cuenta',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF4C4C4C),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.045),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF4C4C4C),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        Form(
                          autovalidateMode: AutovalidateMode.always,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: const EdgeInsets.only(
                                  left: 14.0, bottom: 6.0, top: 8.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFE5E5E5)),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color:
                                      isCorrect ? Colors.green : Color(0xFFE5E5E5),
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            onFieldSubmitted: (value) {
                              setState(() {
                                validationError = validateEmail(value);
                                isCorrect = validationError == null;
                              });
                            },
                            onChanged: (value) {
                              setState(() {
                                validationError = null;
                              });
                            },
                            validator: (value) {
                              return validationError;
                            },
                          ),
                        ),
                        SizedBox(
                          //width: size.width,
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
                                  MaterialPageRoute(builder: (context) => const RequestWidget()));
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
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
