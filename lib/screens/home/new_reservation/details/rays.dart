import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/layout/app_bar/main_color_app_bar.dart';
import 'package:graduation_health_app_project/screens/home/widgets/list_view_for_new_reservations.dart';

import '../../../../core/constants/static_lists.dart';
class RaysScreen extends StatelessWidget {
  const RaysScreen ({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const MainColorAppBar(
          titleText: "الأشعة"
      ),

      body: ListViewForNewReservation(
        itemCount: raysNames.length,
        iconsList: raysIcons,
        namesList: raysNames,

      ),
    );
  }
}
