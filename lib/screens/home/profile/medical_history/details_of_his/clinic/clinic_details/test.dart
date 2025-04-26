import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/app_icons.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/screens/home/widgets/container_in_details.dart';
import 'package:graduation_health_app_project/screens/home/widgets/divider_in_details.dart';
class TestsScreen extends StatelessWidget {
  const TestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        foregroundColor: AppColors.whiteColor,
        leading:Padding(
          padding: const EdgeInsets.only(right: 5),
          child: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon:const Icon(AppIcons.arrow2)
          ),
        ),
        leadingWidth: 30,
        title: Row(
          children: [
            SizedBox(
                width: 25,
                height: 30,
                child: Image.asset("assets/images/splash/img_1.png")
            ),

            const SizedBox(width: 10,),

            const Text("تفاصيل", style: TextStyle(fontSize: AppSize.fontSize20),)

          ],
        ),
      ),

      body: ContainerInDetails(
        text: 'التحليل',
        image: Image.asset("assets/images/general_photos/lab/img.png"),
        theData: Padding(
          padding: const EdgeInsets.all(AppSize.paddingAll15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal15),
                child: SizedBox(
                  height: AppSize.sizedBoxHeight40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                    ],
                  ),
                ),
              ),

              const DividerInDetails()

            ],
          ),
        ),
      ) ,
    );
  }
}