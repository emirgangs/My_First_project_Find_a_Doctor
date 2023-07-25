// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class imageWelcomeContainer extends StatelessWidget {
  const imageWelcomeContainer({super.key, required this.welcomejpg});

  final String welcomejpg;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(welcomejpg))),
    );
  }
}
