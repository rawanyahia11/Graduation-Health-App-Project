
import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/screens/home/filtered_reservations/filtered_reservations_screen.dart';
import 'package:graduation_health_app_project/screens/home/new_reservation/new_reservation_screen.dart';
import 'package:graduation_health_app_project/screens/home/profile/profile_screen.dart';
import 'package:graduation_health_app_project/screens/home/reservations/reservations.dart';


const List<Widget> navigationScreens = [
  ProfileScreen(),
  NewReservationScreen(),
  FilteredReservationScreen(),
  Reservations()
];

//******************************************************************************

const List<String> specializationsName = [
  "أطفال و حديثي الولادة",
  "جلدية",
  "نساء و توليد",
  "أنف و أذن و حنجرة",
  "عظام",
  "نفسي",
  "تخسيس و تغذية",
  "ذكورة و عقم",
  "القلب و الأوعية الدموية",
  "جراحة عامة",
  "مخ و أعصاب",
  "باطنة",
  "عيون",

];

const List specializationsIcons =[
  "assets/icons/home/specialization/img.png",
  "assets/icons/home/specialization/img_1.png",
  "assets/icons/home/specialization/img_1.png",
  "assets/icons/home/specialization/img_3.png",
  "assets/icons/home/specialization/img_4.png",
  "assets/icons/home/specialization/img_5.png",
  "assets/icons/home/specialization/img_1.png",
  "assets/icons/home/specialization/img_7.png",
  "assets/icons/home/specialization/img_8.png",
  "assets/icons/home/specialization/img_9.png",
  "assets/icons/home/specialization/img_10.png",
  "assets/icons/home/specialization/img_11.png",
  "assets/icons/home/specialization/img_12.png",

];


//******************************************************************************


const List<String> testsName = [
  "فحص الكوليسترول والدهون الثلاثية",
  "سيولة الدم",
  "صورة الدم الكاملة",
  "سكر",
  "إختبار بول",
  "إختبار براز",
  "إختبار ذكورة",

];

const List testsIcons =[
  "assets/icons/home/test/img.png",
  "assets/icons/home/test/img_1.png",
  "assets/icons/home/test/img_1.png",
  "assets/icons/home/test/img_3.png",
  "assets/icons/home/test/img_4.png",
  "assets/icons/home/test/img_5.png",
  "assets/icons/home/test/img_1.png",

];


//******************************************************************************


const List<String> xRaysName = [
  "الرنين المغناطيسي",
  "الأشعة المقطعية",
  "المسح الذري",
  "الأشعة السينية",
  "فحص قياس كثافةالعظام",
  "المسح الذرى البوزيترونى بالرنين المغنطيسى",
  "الســونار",
  "التنظير الفلوروسكوبى",
  "فحص النظائر المشعة",
  "الفحص الشعاعى الدورى للثدى",


];

const List xRaysIcons =[
  "assets/icons/home/x-rays/img.png",
  "assets/icons/home/x-rays/img_1.png",
  "assets/icons/home/x-rays/img_1.png",
  "assets/icons/home/x-rays/img_3.png",
  "assets/icons/home/x-rays/img_4.png",
  "assets/icons/home/x-rays/img_5.png",
  "assets/icons/home/x-rays/img_1.png",
  "assets/icons/home/x-rays/img_7.png",
  "assets/icons/home/x-rays/img_8.png",
  "assets/icons/home/x-rays/img_9.png",

];

