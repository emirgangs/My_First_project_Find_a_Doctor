// ignore_for_file: camel_case_types

import 'package:doctor_app_example/utility/color.dart';
import 'package:flutter/material.dart';

class welcomeScreenText extends StatelessWidget {
  const welcomeScreenText({super.key, required this.welcomeText});

  final String welcomeText;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      welcomeText,
      style: Theme.of(context)
          .textTheme
          .displaySmall
          ?.copyWith(color: ColorItems().normalWhiteColor),
    );
  }
}
