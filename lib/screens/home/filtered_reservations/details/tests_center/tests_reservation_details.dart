import 'package:flutter/material.dart';

import '../../../../../layout/app_bar/main_color_app_bar.dart';
import '../../../widgets/container_with_data_in_details_of_reservation.dart';
class TestsReservationDetails extends StatelessWidget {
  const TestsReservationDetails ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainColorAppBar(titleText: "تفاصيل"),

      body: ContainerWithDataInDetailsOfReservation(
        labelText: "حجز معمل",
        image: Image.asset("assets/images/general_photos/lab/img.png"),
        typeOfReservation: "معمل تحاليل",
        hospitalName: "مستشفى الفرنساوي",
        countryName: "طنطا - الغربية" ,
        doctorName: "أخصائي / محمد شاهين",
        reservationNumber: "5" ,
        time: "16:30",
        date: "27.02.2023",
        location: "شارع البحر - الغربية - مصر",
      ),
    );
  }
}