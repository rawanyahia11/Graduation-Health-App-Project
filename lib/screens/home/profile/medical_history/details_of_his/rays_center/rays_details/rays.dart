import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/screens/home/widgets/container_in_details_of_profile.dart';

import '../../../../../../../layout/app_bar/main_color_app_bar.dart';
class Rays extends StatelessWidget {
  const Rays({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: const MainColorAppBar(
          titleText: "تفاصيل"
      ),

      body: ContainerInDetailsOfProfile(
        outerContainerColor: AppColors.lighterColor3,
        innerContainerColor: AppColors.lighterColor,
        sideOfInnerContainerColor: AppColors.mainColor,
        innerContainerWidth: 268,
        innerContainerHeight: 373,
        text: 'أشعة سينية',
        labelSize: AppSize.fontSize48,
        image: Image.asset("assets/images/general_photos/rays/img.png"),
        theData: Padding(
            padding: const EdgeInsets.all(AppSize.paddingAll15),
            child: Column(
              children: [

                Text(
                  "النتيجة",
                  style: TextStyle(
                    fontSize:AppSize.fontSize24,
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

                const SizedBox(height: AppSize.sizedBoxHeight20),

                Image.asset("assets/images/general_photos/rays/img_1.png",width: 227,height: 211,),


              ],
            )
        ),
      ) ,
    );
  }
}