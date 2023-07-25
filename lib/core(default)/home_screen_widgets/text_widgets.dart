// ignore_for_file: camel_case_types

import 'package:doctor_app_example/utility/color.dart';
import 'package:flutter/material.dart';

class homeScreenText extends StatelessWidget {
  const homeScreenText({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    const String _text = 'İstediğiniz Uzmanı Bulun';
    return Text(
      textAlign: TextAlign.center,
      _text,
      style: Theme.of(context)
          .textTheme
          .headlineLarge
          ?.copyWith(color: ColorItems().normalWhiteColor),
    );
  }
}
