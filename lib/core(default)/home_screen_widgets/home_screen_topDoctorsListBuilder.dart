// ignore_for_file: camel_case_types

import 'package:doctor_app_example/core(default)/home_screen_widgets/whatsappLink_Button.dart';
import 'package:doctor_app_example/product(special)/doctors_lists/dent_list.dart';
import 'package:doctor_app_example/product(special)/doctors_lists/top_doctors_list.dart';
import 'package:doctor_app_example/utility/color.dart';
import 'package:doctor_app_example/utility/edgeInsets.dart';
import 'package:flutter/material.dart';

class topDoctorsListviewBuilderWidget extends StatelessWidget {
  const topDoctorsListviewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: topDoctorsName.length,
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
                            topDoctorsName[index],
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
}
