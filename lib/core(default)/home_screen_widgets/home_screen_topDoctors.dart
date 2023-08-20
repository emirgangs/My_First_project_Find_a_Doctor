// ignore_for_file: must_be_immutable, file_names

import 'package:doctor_app_example/core(default)/home_screen_widgets/whatsappLink_Button.dart';
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
      height: MediaQuery.of(context).size.height * 0.17,
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: fontSize().sandartCardsCircular),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                doctorImage,
                height: MediaQuery.of(context).size.height * 0.12,
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
                  const WpLinkButton(),
                ],
              )
            ],
          )),
    );
  }
}
