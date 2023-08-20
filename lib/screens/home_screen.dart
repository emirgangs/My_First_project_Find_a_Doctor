import 'package:doctor_app_example/const/texts.dart';
import 'package:doctor_app_example/core(default)/home_screen_widgets/home_screen_appbar_widgets.dart';
import 'package:doctor_app_example/core(default)/home_screen_widgets/home_screen_cards_title.dart';
import 'package:doctor_app_example/core(default)/home_screen_widgets/home_screen_listBuilder.dart';
import 'package:doctor_app_example/core(default)/home_screen_widgets/home_screen_textbuttons.dart';
import 'package:doctor_app_example/core(default)/home_screen_widgets/home_screen_textfield.dart';
import 'package:doctor_app_example/core(default)/home_screen_widgets/home_screen_topDoctors.dart';
import 'package:doctor_app_example/core(default)/home_screen_widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: HomeScreenAppBarMethod(),
      body: Column(children: [
        const Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                homeScreenText(),
                homeScreenTextField(),
                Row(children: [
                  homeScreenCardsTitle(name: category),
                ]),
              ],
            )),
        Expanded(
            flex: 6,
            child: Column(
              children: [
                const Expanded(
                  flex: 3,
                  child: homeScreenListViewBuilder(),
                ),
                const Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        homeScreenCardsTitle(name: topDoctors),
                        homeScreenTextbutton2(),
                      ],
                    )),
                Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TopDoctors(
                            doctorImage: 'assets/doctors/doctor2.jpg',
                            doctorName: 'Prof. Kalp DR. Ali'),
                        TopDoctors(
                            doctorImage: 'assets/dent_doctors/dent5.jpg',
                            doctorName: 'Prof. Diş DR. Naz')
                      ],
                    )),
              ],
            )),
      ]),
    );
  }
}
