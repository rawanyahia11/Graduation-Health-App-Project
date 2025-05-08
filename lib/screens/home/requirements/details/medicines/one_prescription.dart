import 'package:flutter/material.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../layout/app_bar/main_color_app_bar.dart';
import '../../../widgets/container_in_details_of_requirements.dart';
import 'one_prescription_details.dart';
class OnePrescription extends StatelessWidget {
  const OnePrescription({super.key});

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
        innerContainerHeight: 90,
        text: 'أدوية مطلوبة',
        image: Image.asset("assets/images/general_photos/medicines/img.png"),
        theData: Padding(
          padding: const EdgeInsets.all(AppSize.paddingAll15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "الروشتــــــــــــــــة",
                style: TextStyle(
                  fontSize: AppSize.fontSize20,
                  color: AppColors.darkBlueColor,
                  fontWeight: AppSize.bold,
                  shadows: [
                    Shadow(
                      offset: const Offset(2,2),
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.5), // ظل خفيف
                    ),
                  ],
                ),
              ),

              const Spacer(),

              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   Text(
                    "5 أدوية",
                    style: TextStyle(fontSize: AppSize.fontSize16,color: AppColors.dateAndTimeColor,fontWeight: AppSize.bold),
                  )
                ],
              )
            ],
          )
        ),

        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const OnePrescriptionDetails()));
        },

        doctorName: " محمد شاهين ",
        clinicName: " عيادة العظام ",
        hospitalName: " الشاطبي  ",
        date: " 27.02.2023 ",
        requirementsName: "الروشتة",

        finalText: Text(
          "و الرجاء التوجه فى أقرب وقت ممكن لصرف هذة الأدوية .",
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
