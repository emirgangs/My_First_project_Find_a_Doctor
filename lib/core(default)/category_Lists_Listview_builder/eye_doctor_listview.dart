import 'package:doctor_app_example/core(default)/home_screen_widgets/whatsappLink_Button.dart';
import 'package:doctor_app_example/product(special)/doctors_lists/dent_list.dart';
import 'package:doctor_app_example/product(special)/doctors_lists/eye_list.dart';
import 'package:doctor_app_example/product(special)/doctors_lists/heart_doctor_list.dart';
import 'package:doctor_app_example/utility/color.dart';
import 'package:doctor_app_example/utility/edgeInsets.dart';
import 'package:flutter/material.dart';

ListView eyeDoctorListview() {
  return ListView.builder(
    itemCount: heartDoctorsImage.length,
    itemBuilder: (context, index) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: fontSize().sandartCardsCircular),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      dentDoctorsImage[index],
                      height: MediaQuery.of(context).size.height * 0.12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          eyeDoctorsName[index],
                          style: TextStyle(
                              color: ColorItems().normalWhiteColor,
                              fontSize: fontSize().standartfontSize),
                        ),
                        const WpLinkButton(),
                      ],
                    )
                  ],
                )),
          ),
        ],
      );
    },
  );
}
