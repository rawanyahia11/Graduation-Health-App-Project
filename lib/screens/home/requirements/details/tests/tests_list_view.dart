import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/screens/home/requirements/details/tests/test_details.dart';
import 'package:graduation_health_app_project/screens/home/widgets/list_view_of_requirements.dart';
class TestsListView extends StatelessWidget {
  const TestsListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListViewOfRequirements(
        itemCount: 7,
        nextScreen: TestDetails(),
        requirementType: "سكر صائم FBS",
        doctorName: "دكتور / إسماعيل السيد ",
        date: "27.02.2023",
        clinicName: "عيـــادة - الباطنة"
    );
  }
}