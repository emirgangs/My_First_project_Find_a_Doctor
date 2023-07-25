// ignore_for_file: camel_case_types

import 'package:doctor_app_example/utility/color.dart';
import 'package:flutter/material.dart';

class homeScreenCardsTitle extends StatelessWidget {
  const homeScreenCardsTitle({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(name,
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: ColorItems().normalWhiteColor));
  }
}
