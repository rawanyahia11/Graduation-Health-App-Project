import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/app_icons.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/screens/home/widgets/container_in_details.dart';
import 'package:graduation_health_app_project/screens/home/widgets/data_list_view_in_details.dart';
import 'package:graduation_health_app_project/screens/home/widgets/divider_in_details.dart';
class MedicinesScreen extends StatelessWidget {
  const MedicinesScreen({super.key});

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
        text: 'الأدوية',
        image: Image.asset("assets/images/general_photos/medicines/img.png"),

        theData: Padding(
          padding: const EdgeInsets.all(AppSize.paddingAll15),

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal10),
                child: SizedBox(
                  height: AppSize.sizedBoxHeight40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                          "الكمية",
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

                      const VerticalDivider(
                        color: AppColors.dividerColor,
                        width: 10,      // المسافة الأفقية اللي بياخدها الخط
                        thickness: 1.1,   // سمك الخط نفسه
                        indent: 5,     // بداية المسافة من فوق
                        endIndent: 2,
                      ),

                      Text(
                        "الإسم",
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
                    ],
                  ),
                ),
              ),

              const DividerInDetails(),

              const SizedBox(height: AppSize.sizedBoxHeight20),

              const DataListViewInDetails(
                  padding: EdgeInsets.only(right: 15),
                  separatedItem: DividerInDetails(),
                  itemsCount: 10 ,
                  namesOfItems: "Hyaluronic Acid",
                  amountOfItem: "2" ,
              )

            ],
          ),
        ),
      ) ,
    );
  }
}