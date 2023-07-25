// ignore_for_file: camel_case_types, no_leading_underscores_for_local_identifiers

import 'package:doctor_app_example/utility/color.dart';
import 'package:flutter/material.dart';

class homeScreenTextField extends StatelessWidget {
  const homeScreenTextField({super.key});

  //List<"gelecek olan servisin liste adı"?> searchList = [];

  /*  
  void searchFunc(String value) {
    "gelecek olan servisin liste adı".forEach((doctor) {
      if (doctor!.firstName!.toLowerCase().trim().contains(value)) {
        searchList.add(doctor);
        setState((){});
      }
    });
  }
*/
  @override
  Widget build(BuildContext context) {
    const String _text = 'Doktor Ara';
    const double _number = 10;
    return TextField(
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorItems().CardsBackgroundColor,
        prefixIconColor: ColorItems().standartElevatedColor,
        prefixIcon: const Icon(Icons.search),
        hintText: _text,
        hintStyle: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: ColorItems().whiteColor30),
        border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(_number)),
      ),
      /* onSubmitted: (value){ 
      searchFunc(value); 
      },
      */
    );
  }
}

//çarpı widget eklenir leading veya acitons'a ona da searchList.clear(); veririz kaydetmez
/*     
   arama başladığında yeni bir sayfa oluşturarak ya da alltan sheet tarzı widget
   çıkarabiliriz orda listeleyebiriliz aranan indexleri
*/
