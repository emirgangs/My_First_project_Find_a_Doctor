// ignore_for_file: camel_case_types

import 'package:doctor_app_example/utility/color.dart';
import 'package:flutter/material.dart';

//kategorinin view all'ı
class homeScreenTextbutton1 extends StatelessWidget {
  const homeScreenTextbutton1({super.key});
  final String _text1 = 'Hepsini Gör';
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(_text1,
            style: TextStyle(color: ColorItems().standartElevatedColor)));
  }
}

//doktorların view all'ı
class homeScreenTextbutton2 extends StatelessWidget {
  const homeScreenTextbutton2({super.key});
  final String _text2 = 'Hepsini Gör';
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(_text2,
            style: TextStyle(color: ColorItems().standartElevatedColor)));
  }
}
