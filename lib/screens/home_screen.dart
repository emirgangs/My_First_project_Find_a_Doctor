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
  final String category = 'Kategori';
  final String topDoctors = 'Öne Çıkan Doktorlar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeScreenAppBarMethod(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  const homeScreenText(),
                  mySpacedBody(),
                  const homeScreenTextField(),
                  //mySpacedBody(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        homeScreenCardsTitle(name: category),
                        const homeScreenTextbutton1(),
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
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          homeScreenCardsTitle(name: topDoctors),
                          const homeScreenTextbutton2(),
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
      ),
    );
  }

  SizedBox mySpacedBody() => const SizedBox(height: 15);
}
