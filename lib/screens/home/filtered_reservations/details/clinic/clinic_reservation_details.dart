import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/layout/app_bar/main_color_app_bar.dart';
import 'package:graduation_health_app_project/screens/home/widgets/container_with_data_in_details_of_reservation.dart';
class ClinicReservationDetails extends StatelessWidget {
  const ClinicReservationDetails ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainColorAppBar(titleText: "تفاصيل"),

      body: ContainerWithDataInDetailsOfReservation(
          labelText: "حجز عيادة",
          image: Image.asset("assets/images/general_photos/clinic/img.png"),
          typeOfReservation: "عيــادة - أسنان",
          hospitalName: "مستشفى الفرنساوي",
          countryName: "طنطا - الغربية" ,
          doctorName: "دكتور / أحمد سليم",
          reservationNumber: "4" ,
          time: "16:30",
          date: "27.02.2023",
          location: "شارع البحر - الغربية - مصر",
      ),
    );
  }
}
