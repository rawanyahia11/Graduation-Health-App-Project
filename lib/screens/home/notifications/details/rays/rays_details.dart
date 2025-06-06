import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../layout/app_bar/main_color_app_bar.dart';
import '../../../widgets/container_in_details_of_requirements.dart';
class RaysDetails extends StatelessWidget {
  const RaysDetails ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: const MainColorAppBar(
          titleText: "تفاصيل"
      ),

      body: ContainerInDetailsOfRequirements(
        outerContainerColor: AppColors.lighterColor2,
        innerContainerColor: AppColors.lighterColor,
        sideOfInnerContainerColor: AppColors.sideOfContainerColor,
        innerContainerWidth: double.infinity,
        innerContainerHeight: 67,
        text: 'أشعة مطلوبة',
        image: Image.asset("assets/images/general_photos/rays/img.png"),
        theData: Padding(
            padding: const EdgeInsets.all(AppSize.paddingAll5),
            child: Text(
              "Magnetic Resonance Imaging (MRI) ",
              style: TextStyle(
                fontSize: AppSize.fontSize16,
                color: AppColors.darkBlueColor,
                shadows: [
                  Shadow(
                    offset: const Offset(2,2),
                    blurRadius: 5,
                    color: Colors.black.withOpacity(0.5), // ظل خفيف
                  ),
                ],
              ),
            ),
        ),

        doctorName: " إسماعيل السيد ",
        clinicName: " عيادة العظام ",
        hospitalName: " الشاطبي  ",
        date: " 27.02.2023 ",
        requirementsName: "الأشعة",

        finalText: Text(
            "و الرجاء التوجه فى أقرب وقت ممكن لإجراء هذة الفحوصات .",
          style: TextStyle(
            fontSize:AppSize.fontSize20,
            color: AppColors.lighterDarkBlueColor,
            fontWeight: AppSize.bold,
            shadows: [
              Shadow(
                offset: const Offset(2,2),
                blurRadius: 5,
                color: Colors.black.withOpacity(0.5) ,
              ),
            ],
          ),
          textAlign: TextAlign.center ,
        ),


      ) ,
    );
  }
}
