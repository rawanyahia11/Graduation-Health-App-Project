
import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/screens/home/filtered_reservations/details/clinic/clinic_list_view.dart';
import 'package:graduation_health_app_project/screens/home/filtered_reservations/details/rays_center/rays_center_list_view.dart';
import 'package:graduation_health_app_project/screens/home/filtered_reservations/details/tests_center/tests_center_list_view.dart';
import 'package:graduation_health_app_project/screens/home/filtered_reservations/filtered_reservations_screen.dart';
import 'package:graduation_health_app_project/screens/home/new_reservation/new_reservation_screen.dart';
import 'package:graduation_health_app_project/screens/home/profile/profile_screen.dart';
import 'package:graduation_health_app_project/screens/home/reservations/reservations.dart';


const List surveyQ = [
  ".  ماهو وزنك؟",
  ".  الفئة العمرية",
  ".  ماهو جنسك؟",
  ".  ما هو مستوى تعليمك؟",
  ".  ما هي فئة دخلك السنوي؟",
  ".  هل تعانى من إرتفاع ضغط الدم؟",
  ".  هل تعانى من إرتفاع الكوليسترول؟",
  ".  هل أجريت فصح الكوليسترول فى الخمس سنوات الماضية؟",
  ".  هل دخنت 100 سيجارة على الأقل فى حياتك؟",
  ".  هل تستهلك الكحول بكثرة؟",
  ".  هل أصبت بسكته دماغية من قبل؟",
  ".  هل تعانى من مرض القلب التاجي أو أصبت بنوبة قلبية؟",
  ".  هل مارست نشاطاً بدنياً فى ال 30 يوماً الماضية؟",
  ".  هل تتناول الفواكه مرة واحدة أو أكثر يوميا؟",
  ".  هل تتناول الخضروات مرة واحدة أو أكثر يومياً؟",
  ".  هل تواجه صعوبة كبيرة فى المشى أو صعود السلالم؟",
  ".  هل لديك أي تأمين صحي؟",
  ".  هل كان هناك وقت خلال ال 12 شهراً الماضية إحتجت فيه لزيارة طبيب لكنك لم تتمكن بسبب التكلفة؟",
  ".  كيف تصف صحتك العامة؟",
  ".  كم يوماً خلال ال 30 يوماً الماضية كانت صحتك العقلية غير جيدة؟",
  ".  كم يوماً خلال ال 30 يوماً الماضية كانت صحتك البدنية غير جيدة؟",
];


const List<String> age = [
  "24 - 18",
  "31 - 25",
  "38 - 32",
  "45 - 39",
  "52 - 46",
  "59 - 53",
  "66 - 60",
  "73 - 67",
  "80 - 74",
  "أكثر من 80",
];

const List<String> levelOfEducation = [
  "لم يدخل المدرسة أبدا",
  "الإبتدائية",
  "الإعدادية",
  "الدبلومات الفنية",
  "الثانوية العامة",
  "خريخ جامعي",
];

const List<String> incomeCategory = [
  "أقل من 72,000 ج",
  "من 72,000 إلى 100,000 ج",
  "من 100,001 إلى 150,000 ج",
  "من 150,001 إلى 200,000 ج",
  "من 200,001 إلى 300,000 ج",
  "من 300,001 إلى 400,000 ج",
  "من 400,001 إلى 600,000 ج",
  "أكثر من 600,000 ج",
];

const List<String> descriptionOfHealth = [
  "ممتاز",
  "جيد جدا",
  "جيد",
  "مقبول",
  "سيئ",
];


//******************************************************************************

const List<Widget> navigationScreens = [
  ProfileScreen(),
  NewReservationScreen(),
  FilteredReservationScreen(),
  Reservations()
];

//******************************************************************************

const List<String> labelsOfNavigationContainers = [
  "عيادات",
  "م أشعة",
  "م تحاليل",
];

const List<Widget> listViewsInReservation = [
  ClinicListView(),
  RaysCenterListView(),
  TestsCenterListView()
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

