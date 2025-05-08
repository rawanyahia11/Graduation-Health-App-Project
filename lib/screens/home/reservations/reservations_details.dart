import 'package:flutter/material.dart';

import '../../../layout/app_bar/main_color_app_bar.dart';
import '../widgets/container_with_data_in_details_of_reservation.dart';
class ReservationDetails extends StatelessWidget {
  const ReservationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainColorAppBar(titleText: "تفاصيل"),

      body: ContainerWithDataInDetailsOfReservation(
        labelText: "حجز عيادة",
        image: Image.asset("assets/images/auth/img.png"),
        typeOfReservation: "عيــادة - مخ و أعصاب",
        hospitalName: "مستشفى الشاطبي",
        countryName: "طنطا - الغربية" ,
        doctorName: "دكتور / محمد شاهين ",
        reservationNumber: "10" ,
        time: "16:30",
        date: "27.02.2023",
        location: "شارع البحر - الغربية - مصر",
      ),
    );
  }
}
