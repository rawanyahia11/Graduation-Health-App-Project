import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/screens/home/filtered_reservations/details/rays_center/rays_reservation_details.dart';
import 'package:graduation_health_app_project/screens/home/widgets/list_view_of_filtered_and_one_ticket.dart';
class RaysCenterListView extends StatelessWidget {
  const RaysCenterListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListViewOfFilteredAndOneTicket(
        itemCount: 7,
        nextScreen: const RaysReservationDetails(),
        hospitalName: "مستشفى الفرنساوي",
        doctorName: "أخصائي / محمد علام",
        specializationName: "أشعة - رنين مغناطيسي",
        time: "16:30",
        date: "27.02.2023",
        image: Image.asset("assets/images/general_photos/rays/img.png")
    );
  }
}