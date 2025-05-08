import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/screens/home/requirements/details/medicines/one_prescription.dart';
import 'package:graduation_health_app_project/screens/home/widgets/list_view_of_requirements.dart';
class PrescriptionsListView extends StatelessWidget {
  const PrescriptionsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListViewOfRequirements(
        itemCount: 7,
        nextScreen: OnePrescription(),
        requirementType: "روشتــــــــــــــــة",
        doctorName: "دكتور/ محمد شاهين ",
        date: "27.02.2023",
        clinicName: "عيادة - العظام "
    );
  }
}
