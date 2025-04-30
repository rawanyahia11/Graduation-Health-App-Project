import 'package:flutter/material.dart';

import '../../../../../layout/app_bar/main_color_app_bar.dart';
import '../../../widgets/container_with_data_in_details_of_reservation.dart';
class RaysReservationDetails extends StatelessWidget {
  const RaysReservationDetails ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainColorAppBar(titleText: "تفاصيل"),

      body: ContainerWithDataInDetailsOfReservation(
        labelText: "حجز أشعة",
        image: Image.asset("assets/images/general_photos/rays/img.png"),
        typeOfReservation: "مركز أشعة",
        hospitalName: "مستشفى الفرنساوي",
        countryName: "طنطا - الغربية" ,
        doctorName: "أخصائي / محمد علام",
        reservationNumber: "9" ,
        time: "16:30",
        date: "27.02.2023",
        location: "شارع البحر - الغربية - مصر",
      ),
    );
  }
}