// ignore_for_file: file_names

import 'package:doctor_app_example/utility/color.dart';
import 'package:flutter/material.dart';

class ContainerOpacity extends StatelessWidget {
  const ContainerOpacity({super.key});

  @override
  Widget build(BuildContext context) {
    const double number1 = 180;
    const double number2 = 0.79;
    const double number3 = 0;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(number1),
        gradient: LinearGradient(
          colors: [
            ColorItems().welcomeBackgroundColor.withOpacity(number2),
            Colors.black.withOpacity(number3),
          ],
          end: Alignment.topCenter,
          begin: Alignment.center,
        ),
      ),
    );
  }
}
