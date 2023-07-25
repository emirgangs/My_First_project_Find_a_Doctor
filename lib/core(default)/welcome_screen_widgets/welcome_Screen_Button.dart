// ignore_for_file: file_names, camel_case_types, no_leading_underscores_for_local_identifiers

import 'package:doctor_app_example/screens/home_screen.dart';
import 'package:doctor_app_example/utility/color.dart';
import 'package:flutter/material.dart';

class welcomeScreenButton extends StatelessWidget {
  const welcomeScreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    const String _text = 'Başla';
    const double _height = 60;
    const double _weight = 170;
    const double _radius = 50;
    return SizedBox(
      height: _height,
      width: _weight,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(_radius))),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return const HomeScreen();
              },
            ));
          },
          child: Text(
            _text,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: ColorItems().welcomeButtonTextColor),
          )),
    );
  }
}
