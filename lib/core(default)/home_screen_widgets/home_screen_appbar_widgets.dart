// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:doctor_app_example/const/texts.dart';
import 'package:doctor_app_example/utility/color.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
AppBar HomeScreenAppBarMethod() {
  const double _radius = 30;
  return AppBar(
    actions: [
      InkWell(
        onTap: () {},
        child: CircleAvatar(
          backgroundColor: ColorItems().standartElevatedColor,
          radius: _radius,
          child: Image.asset(avatarpng),
        ),
      ),
    ],
  );
}
