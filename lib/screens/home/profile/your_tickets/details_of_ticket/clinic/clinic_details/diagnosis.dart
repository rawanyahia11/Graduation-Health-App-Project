import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/screens/home/widgets/container_in_details_of_profile.dart';
import 'package:graduation_health_app_project/screens/home/widgets/divider_in_details.dart';

import '../../../../../../../layout/app_bar/main_color_app_bar.dart';
import '../../../../../widgets/data_list_view_in_details.dart';
class DiagnosisScreen extends StatelessWidget {
  const DiagnosisScreen({super.key});

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
        text: 'التشخيص',
        labelSize:  AppSize.fontSize48,
        image: Image.asset("assets/images/general_photos/diagnosis/img.png"),
        theData: Padding(
            padding: const EdgeInsets.all(AppSize.paddingAll15),
            child: Column(
              children: [

                Text(
                  "الإسم",
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

                const DataListViewInDetails(
                  padding: EdgeInsets.only(right: 15),
                  separatedItem: DividerInDetails(),
                  itemsCount: 10 ,
                  namesOfItems: "Food poisoning Case",
                )
              ],
            )
        ),
      ) ,
    );
  }
}