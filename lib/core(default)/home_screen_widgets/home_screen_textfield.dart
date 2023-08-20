// ignore_for_file: camel_case_types, no_leading_underscores_for_local_identifiers

import 'package:doctor_app_example/const/texts.dart';
import 'package:doctor_app_example/utility/color.dart';
import 'package:doctor_app_example/utility/edgeInsets.dart';
import 'package:flutter/material.dart';

class homeScreenTextField extends StatelessWidget {
  const homeScreenTextField({super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorItems().CardsBackgroundColor,
        prefixIconColor: ColorItems().standartElevatedColor,
        prefixIcon: const Icon(Icons.search),
        hintText: findaDoctor,
        hintStyle: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: ColorItems().whiteColor30),
        border:
            OutlineInputBorder(borderRadius: fontSize().homeSTextfieldCircular),
      ),
    );
  }
}
