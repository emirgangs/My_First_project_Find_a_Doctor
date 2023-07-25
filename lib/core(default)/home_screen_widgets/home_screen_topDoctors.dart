// ignore_for_file: must_be_immutable, file_names

import 'package:doctor_app_example/utility/edgeInsets.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app_example/utility/color.dart';

class TopDoctors extends StatelessWidget {
  TopDoctors({super.key, required this.doctorImage, required this.doctorName});
  String doctorImage;
  String doctorName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                doctorImage,
                height: 90,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    doctorName,
                    style: TextStyle(
                        color: ColorItems().normalWhiteColor,
                        fontSize: fontSize().standartfontSize),
                  ),
                  Text("Whatsapp Link",
                      style: TextStyle(
                          color: ColorItems().whiteColor30,
                          fontSize: fontSize().standartfontSize)),
                ],
              )
            ],
          )),
    );
  }
}
