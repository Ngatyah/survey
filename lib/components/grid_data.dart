import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:survey/components/mobile_questions.dart';

class GridData extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String status;
  final Color pcolor;
  final Color scolor;
  const GridData({
    Key? key,
    required this.iconData,
    required this.title,
    required this.status,
    required this.pcolor,
    required this.scolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const MobileQuestions());
      },
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                blurRadius: 4,
                offset: Offset(4, 8), // Shadow position
              ),
            ],
          ),
          child: Column(
            children: [
              const SizedBox(height: 25),
              Container(
                  decoration: BoxDecoration(
                    color: pcolor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Icon(iconData, size: 60, color: Colors.white),
                  )),
              const SizedBox(height: 10),
              Text(
                title,
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                        text: 'Completion Status: ',
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 11)),
                    TextSpan(
                      text: status,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Tap to start survey",
                style: TextStyle(color: pcolor, fontSize: 12),
              ),
            ],
          )),
    );
  }
}
