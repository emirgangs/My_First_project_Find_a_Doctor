// ignore_for_file: camel_case_types

import 'package:doctor_app_example/const/texts.dart';
import 'package:doctor_app_example/core(default)/home_screen_widgets/home_screen_topDoctorsListBuilder.dart';
import 'package:doctor_app_example/utility/color.dart';
import 'package:doctor_app_example/utility/edgeInsets.dart';
import 'package:flutter/material.dart';

//doktorların view all'ı
class homeScreenTextbutton2 extends StatelessWidget {
  const homeScreenTextbutton2({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    top: fontSize().listvbuildersheetcircular)),
            backgroundColor: ColorItems().scaffoldBackgroundColor,
            context: context,
            builder: (context) {
              return SizedBox(
                height: MediaQuery.of(context).size.height / 0.5,
                child: const topDoctorsListviewBuilderWidget(),
              );
            },
          );
        },
        child: Text(homeStextButtonText,
            style: TextStyle(color: ColorItems().standartElevatedColor)));
  }
}
