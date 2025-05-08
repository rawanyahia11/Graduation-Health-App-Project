import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/screens/home/profile/medical_history/details_of_his/clinic/clinic_screen.dart';
import '../../../../core/constants/colors.dart';
import '../../../../layout/app_bar/white_app_bar.dart';
import '../../widgets/drawer.dart';
import '../../widgets/list_view_of_filtered_and_one_ticket.dart';
class OneTicket extends StatelessWidget {
  OneTicket({super.key});

  final GlobalKey <ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.whiteColor,
      appBar: WhiteAppBar(
        showBackButton: true,
        onMenuPressed: (){
          scaffoldKey.currentState?.openEndDrawer();
        },
      ),

      endDrawer: TheDrawer(name: "محمد أحمد", id: "30312011623222", profilePhoto: Image.asset("assets/images/profile/profile_photo/img.png"),),

      body: Center(
        child: Column(
          children: [

            Text(
              "تذكرة 1",
              style: TextStyle(
                fontSize:AppSize.fontSize30,
                color: AppColors.labelsInDrawerColor,
                shadows: [
                  Shadow(
                    offset: const Offset(2,2),
                    blurRadius: 5,
                    color: Colors.black.withOpacity(0.5), // ظل خفيف
                  ),
                ],
              ),
            ),

            const SizedBox(height: AppSize.sizedBoxHeight15),

            ListViewOfFilteredAndOneTicket(
                itemCount: 10,
                nextScreen: ClinicScreen(),
                hospitalName: "مستشفى الشاطبي",
                doctorName: "دكتور/ أحمد سليم",
                specializationName: "عيادة - القلب والأوعية الدموية",
                time: "16:30",
                date: "27.02.2023",
                image: Image.asset("assets/images/auth/img.png")
            ),
          ],
        ),
      ),
    );
  }
}
