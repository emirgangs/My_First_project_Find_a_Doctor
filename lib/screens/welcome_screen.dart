import 'package:doctor_app_example/const/texts.dart';
import 'package:doctor_app_example/core(default)/welcome_screen_widgets/container_Opacity.dart';
import 'package:doctor_app_example/core(default)/welcome_screen_widgets/image_Welcome_Container.dart';
import 'package:doctor_app_example/core(default)/welcome_screen_widgets/welcome_Screen_Button.dart';
import 'package:doctor_app_example/core(default)/welcome_screen_widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          imageWelcomeContainer(welcomejpg: welcomedoctorjpg),
          ContainerOpacity(),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              welcomeScreenText(welcomeText: welcomesText),
              welcomeScreenButton()
            ],
          ),
        ],
      ),
    );
  }
}
