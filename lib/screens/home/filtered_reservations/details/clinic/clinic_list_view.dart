import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/screens/home/filtered_reservations/details/clinic/clinic_reservation_details.dart';
import 'package:graduation_health_app_project/screens/home/widgets/list_view_of_filtered_and_one_ticket.dart';
class ClinicListView extends StatelessWidget {
  const ClinicListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListViewOfFilteredAndOneTicket(
        itemCount: 7,
        nextScreen: const ClinicReservationDetails(),
        hospitalName: "مستشفى الفرنساوي",
        doctorName: "دكتور / أحمد سليم",
        specializationName: "عيــــــــادة - أسنان",
        time: "16:30",
        date: "27.02.2023",
        image: Image.asset("assets/images/general_photos/clinic/img.png")
    );
  }
}
