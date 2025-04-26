import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/screens/home/profile/medical_history/details_of_his/clinic/clinic_details/diagnosis.dart';
import 'package:graduation_health_app_project/screens/home/profile/medical_history/details_of_his/clinic/clinic_details/medicines.dart';
import 'package:graduation_health_app_project/screens/home/profile/medical_history/details_of_his/clinic/clinic_details/rays.dart';
import 'package:graduation_health_app_project/screens/home/profile/medical_history/details_of_his/clinic/clinic_details/test.dart';
import 'package:graduation_health_app_project/screens/home/widgets/material_button_in_clinic_lab_rays_screens.dart';

import '../../../../../../core/constants/app_icons.dart';
import '../../../../../../core/constants/colors.dart';
import '../../../../../../core/constants/sizes.dart';
import '../../../../widgets/drawer.dart';
class ClinicScreen extends StatelessWidget {
   ClinicScreen({super.key});

  final GlobalKey <ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        key: scaffoldKey,
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          foregroundColor: AppColors.mainColor,

          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(AppIcons.arrow1),
          ),

          actions: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Image.asset(
                "assets/images/auth/img.png",
              ),
            ),
            IconButton(
              onPressed:(){
                scaffoldKey.currentState?.openEndDrawer();
              },

              icon: const Icon(AppIcons.menu),
            ),
          ],
        ),

        endDrawer: TheDrawer(name: "محمد أحمد", id: "30312011623222", profilePhoto: Image.asset("assets/images/profile/profile_photo/img.png"),),

        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(AppSize.paddingAll15),
            child: Column(
              children: [

                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "عيادة",
                    style: TextStyle(
                      fontSize:AppSize.fontSize20,
                      color: AppColors.labelsInDrawerColor,
                      shadows: [
                        Shadow(
                          offset: const Offset(2,2),
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.2), // ظل خفيف
                        ),
                      ],
                    ),
                  ),
                ),


                Text(
                  "القلب والأوعية الدموية",
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

                const SizedBox(height: AppSize.sizedBoxHeight60,),

                MaterialButtonInClinicLabRaysScreens(
                    heightSize: 51,
                    widthSize: 230,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const MedicinesScreen()));
                    },
                    text: "الروشتة",
                    textSize: 30 ,
                  image: Image.asset("assets/images/general_photos/medicines/img.png"),
                ),

                const SizedBox(height: AppSize.sizedBoxHeight50,),

                MaterialButtonInClinicLabRaysScreens(
                  heightSize: 51,
                  widthSize: 230,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const TestsScreen()));
                  },
                  text: "التحليل",
                  textSize: 30 ,
                  image: Image.asset("assets/images/general_photos/lab/img.png"),
                ),

                const SizedBox(height: AppSize.sizedBoxHeight50,),

                MaterialButtonInClinicLabRaysScreens(
                  heightSize: 51,
                  widthSize: 230,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const RaysScreen()));
                  },
                  text: "الأشعة",
                  textSize: 30 ,
                  image: Image.asset("assets/images/general_photos/rays/img.png"),
                ),

                const SizedBox(height: AppSize.sizedBoxHeight50,),

                MaterialButtonInClinicLabRaysScreens(
                  heightSize: 51,
                  widthSize: 230,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const DiagnosisScreen()));
                  },
                  text: "التشخيص",
                  textSize: 30 ,
                  image: Image.asset("assets/images/general_photos/diagnosis/img.png"),
                ),



              ],
            ),
          ),
        )
    );
  }
}
