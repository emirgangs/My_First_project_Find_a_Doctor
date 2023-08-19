// ignore_for_file: file_names, camel_case_types, no_leading_underscores_for_local_identifiers

import 'package:doctor_app_example/const/texts.dart';
import 'package:doctor_app_example/screens/home_screen.dart';
import 'package:doctor_app_example/utility/color.dart';
import 'package:doctor_app_example/utility/edgeInsets.dart';
import 'package:flutter/material.dart';

class welcomeScreenButton extends StatelessWidget {
  const welcomeScreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.4,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: fontSize().welcomeScreenbuttonCircular)),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return const HomeScreen();
              },
            ));
          },
          child: Text(
            welcomeSbuttonText,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: ColorItems().welcomeButtonTextColor),
          )),
    );
  }
}
