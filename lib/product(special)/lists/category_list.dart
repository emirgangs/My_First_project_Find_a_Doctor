import 'package:doctor_app_example/core(default)/category_Lists_Listview_builder/brain_doctor_litview.dart';
import 'package:doctor_app_example/core(default)/category_Lists_Listview_builder/dent_doctor_listview.dart';
import 'package:doctor_app_example/core(default)/category_Lists_Listview_builder/ear_doctor_listview.dart';
import 'package:doctor_app_example/core(default)/category_Lists_Listview_builder/eye_doctor_listview.dart';
import 'package:doctor_app_example/core(default)/category_Lists_Listview_builder/heart_doctor_listview.dart';
import 'package:doctor_app_example/core(default)/category_Lists_Listview_builder/urology_doctor_listview.dart';

//BURASI KATEGORİ LİSTİN İSMİ VE FOTOĞRAF LİSTESİ
List<String> categoryNames = [
  "Kalp",
  "Beyin",
  "Diş",
  "Kulak",
  "Göz",
  "Üroloji"
];

List<String> categoryList = [
  "assets/heart_try.jpg",
  "assets/brainnn.jpg",
  "assets/dentasss.png",
  "assets/ear22.png",
  "assets/eye22.png",
  "assets/urology22.png",
];

//KATEGORİ LİSTİN İNDEKSİNE GÖRE WİDGET ÇIKARTAN LİSTEMİZ
List<dynamic> categoryCardsList = [
  heartDoctorListview(),
  brainDoctorListview(),
  dentDoctorListview(),
  earDoctorListview(),
  eyeDoctorListview(),
  urologyDoctorListview(),
];

List<Map<String, dynamic>> categoryListsss = [
  {"name": "Kalp", "image": "assets/heart_try.jpg"},
  {"name": "Beyin", "image": "assets/brainnn.jpg"},
  {"name": "Diş", "image": "assets/dentasss.png"},
  {"name": "Kulak", "image": "assets/ear22.png"},
  {"name": "Göz", "image": "assets/eye22.png"},
  {"name": "Üroloji", "image": "assets/urology22.png"},
];
