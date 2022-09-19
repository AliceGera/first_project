import 'package:first_project/screens/perfomance_screen/models/missions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MissionsWidget extends StatelessWidget {
  final List<Missions> missionsList;
  final bool isMissionsPending;

  const MissionsWidget(
      {Key? key, required this.missionsList, required this.isMissionsPending})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${missionsList.length} Missions ${isMissionsPending ? 'Pending' : "Processing"}',
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        SizedBox(height: size.height * 0.03),
        ListView.builder(
          itemCount: missionsList.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFF69D8FA),
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(
                          8.0) //                 <--- border radius here
                      ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Image.network(
                        missionsList[index].image ?? '',
                        height: size.height * 0.14,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                //'Earn 300 Stardust',
                                missionsList[index].title ?? '',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                missionsList[index].description ?? '',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
