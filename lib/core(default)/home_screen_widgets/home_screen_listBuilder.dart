// ignore_for_file: file_names, camel_case_types, no_leading_underscores_for_local_identifiers, constant_identifier_names, non_constant_identifier_names

import 'package:doctor_app_example/product(special)/lists/category_list.dart';
import 'package:doctor_app_example/utility/color.dart';
import 'package:flutter/material.dart';

class homeScreenListViewBuilder extends StatelessWidget {
  const homeScreenListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    const double _containerWidth = 85;
    const double _CardElevation = 5;
    EdgeInsetsGeometry _containerMarginValue = const EdgeInsets.only(right: 30);
    BorderRadiusGeometry _CardRadiusCircular = BorderRadius.circular(20);
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Container(
              width: _containerWidth,
              margin: _containerMarginValue,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      _showAnotherWidget(context, categoryCardsList[index]);
                    },
                    child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: _CardElevation,
                        shadowColor: ColorItems().standartElevatedColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: _CardRadiusCircular),
                        child: Image.asset(categoryList[index])),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    categoryNames[index],
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: ColorItems().normalWhiteColor),
                  )
                ],
              ));
        });
  }

  void _showAnotherWidget(BuildContext context, Widget selectedItem) {
    // BURADA INWELL VERDİĞİMİZ ONTAPP'İNE BU FONKSİYONU VERİYORUZ VE
    // İSTEDİĞİMİZ GİBİ BİZE BİR ŞEY DÖNDÜRÜR

    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
      backgroundColor: ColorItems().scaffoldBackgroundColor,
      context: context,
      builder: (context) {
        return SizedBox(
          height: 500,
          child: selectedItem,
        );
      },
    );
  }
}
