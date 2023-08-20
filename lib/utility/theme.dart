import 'package:doctor_app_example/utility/color.dart';
import 'package:flutter/material.dart';

class LightTheme {
  ThemeData theme = ThemeData(
    scaffoldBackgroundColor: ColorItems().scaffoldBackgroundColor,
    appBarTheme: AppBarTheme(
        backgroundColor: ColorItems().normalTransparant, elevation: _zero),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorItems().standartElevatedColor)),
    cardColor: ColorItems().CardsBackgroundColor,
  );
}

const double _zero = 0;
