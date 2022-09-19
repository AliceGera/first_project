import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class DescriptionWidget extends StatelessWidget {
  final List<String> descriptionList;

  const DescriptionWidget(this.descriptionList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5F5F5),
      child: Column(
        children: [
           Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              AppLocalizations.of(context).helloWorld,
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF4C4C4C)),
            ),
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: descriptionList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 25,
                                left: index == 0 ? 16 : 0,
                              ),
                              padding:
                                  const EdgeInsets.fromLTRB(16, 51, 16, 43),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Color(0xFFF5F5F5),
                                border: Border.all(
                                  color: Color(0xFF9EDC15),
                                  width: 8,
                                ),
                              ),
                              child: Text(
                                descriptionList[index],
                                style: TextStyle(fontSize: 22),
                                textAlign: TextAlign.center,
                              ),
                              //if(index==3)
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color(0xFF9EDC15),
                              ),
                              child: Text(
                                (index + 1).toString(),
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF000000)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        if (index != 2)
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Image.asset(
                              "assets/images/connection.png",
                            ),
                          ),
                      ],
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
