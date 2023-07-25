import 'package:doctor_app_example/product(special)/doctors_lists/dent_list.dart';
import 'package:doctor_app_example/product(special)/doctors_lists/ear_list.dart';
import 'package:doctor_app_example/product(special)/doctors_lists/heart_doctor_list.dart';
import 'package:doctor_app_example/utility/color.dart';
import 'package:doctor_app_example/utility/edgeInsets.dart';
import 'package:flutter/material.dart';

ListView earDoctorListview() {
  return ListView.builder(
    itemCount: heartDoctorsImage.length,
    itemBuilder: (context, index) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: fontSize().selectedinListcardsHeight,
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: fontSize().sandartCardsCircular),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      dentDoctorsImage[index],
                      height: fontSize().cardsphotoHeight,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          earDoctorsName[index],
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
          ),
        ],
      );
    },
  );
}
