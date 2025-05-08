import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/screens/home/requirements/details/rays/rays_details.dart';
import 'package:graduation_health_app_project/screens/home/widgets/list_view_of_requirements.dart';
class RaysListView extends StatelessWidget {
  const RaysListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListViewOfRequirements(
        itemCount: 7,
        nextScreen: RaysDetails(),
        requirementType: "Magnetic Resonance Imaging (MRI)",
        doctorName: "دكتور / إسماعيل السيد ",
        date: "27.02.2023",
        clinicName: "عيـــادة - العظام"
    );
  }
}