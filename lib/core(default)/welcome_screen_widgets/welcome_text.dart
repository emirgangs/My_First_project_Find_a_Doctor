// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class welcomeScreenText extends StatelessWidget {
  const welcomeScreenText({super.key, required this.welcomeText});

  final String welcomeText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: welcomeTextPadding,
      child: Text(
        textAlign: TextAlign.center,
        welcomeText,
        style: Theme.of(context)
            .textTheme
            .displaySmall
            ?.copyWith(color: whiteColor),
      ),
    );
  }
}

Color whiteColor = Colors.white;
EdgeInsets welcomeTextPadding = const EdgeInsets.only(top: 500);
