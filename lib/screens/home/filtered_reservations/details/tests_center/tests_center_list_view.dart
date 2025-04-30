import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/screens/home/filtered_reservations/details/tests_center/tests_reservation_details.dart';
import 'package:graduation_health_app_project/screens/home/widgets/list_view_of_filtered_and_one_ticket.dart';
class TestsCenterListView extends StatelessWidget {
  const TestsCenterListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListViewOfFilteredAndOneTicket(
        itemCount: 7,
        nextScreen: const TestsReservationDetails(),
        hospitalName: "مستشفى الفرنساوي",
        doctorName: "أخصائي / محمد شاهين ",
        specializationName: "تحليل - صورة دم كاملة ",
        time: "16:30",
        date: "27.02.2023",
        image: Image.asset("assets/images/general_photos/lab/img.png")
    );
  }
}
