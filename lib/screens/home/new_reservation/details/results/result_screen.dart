import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/layout/app_bar/main_color_app_bar.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';
import 'available_tickets.dart';
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainColorAppBar(titleText: "النتائج"),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.paddingAll25),
        child: ListView.separated(
            itemBuilder: (context, index) => MaterialButton(
                minWidth: double.infinity,
                height: 100,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AvailableTickets() ));

                },
                color: AppColors.lighterColor,
                elevation: 4 ,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.radius8),
                    side: BorderSide(color: AppColors.lighterColor2,width: AppSize.width1)
                ),

                child: Padding(
                  padding: const EdgeInsets.only(top: 15, right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/auth/img.png",
                            width: 55,
                            height: 55,
                          ),

                          const SizedBox(width: AppSize.sizedBoxWidth30),

                          const Text(
                            "مستشفى الشاطبي",
                            style: TextStyle(color: AppColors.darkBlueColor,fontSize: AppSize.fontSize22),
                          )
                        ],
                      ),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                           Text(
                            "الشاطبي  -  الإسكندرية",
                            style: TextStyle(color: AppColors.redColorInBookScreen,fontSize: AppSize.fontSize12),
                          )
                        ],
                      )
                    ],
                  ),
                )

            ),

            separatorBuilder: (context, index) => const SizedBox(height: AppSize.sizedBoxHeight15,),
            itemCount: 20
        ),
      ),
    );
  }
}

