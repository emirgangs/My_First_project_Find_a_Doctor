// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

import 'package:doctor_app_example/utility/color.dart';
import 'package:doctor_app_example/utility/edgeInsets.dart';
import 'package:flutter/material.dart';

class ContainerOpacity extends StatelessWidget {
  const ContainerOpacity({super.key});

  @override
  Widget build(BuildContext context) {
    const double _opacitynumber1 = 0.79;
    const double _opacitynumber2 = 0;
    return Container(
      decoration: BoxDecoration(
        borderRadius: fontSize().welcomeScreenopacityCircular,
        gradient: LinearGradient(
          colors: [
            ColorItems().welcomeBackgroundColor.withOpacity(_opacitynumber1),
            ColorItems().normalBlackColor.withOpacity(_opacitynumber2),
          ],
          end: Alignment.topCenter,
          begin: Alignment.center,
        ),
      ),
    );
  }
}
