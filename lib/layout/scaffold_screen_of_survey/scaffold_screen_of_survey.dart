import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/core/constants/strings.dart';
class ScaffoldScreenOfSurvey extends StatelessWidget {

  final Widget widget1 ;
  final Widget widget2 ;

  const ScaffoldScreenOfSurvey({super.key, required this.widget1, required this.widget2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [ AppColors.mainColor.withOpacity(0.1),AppColors.whiteColor],
              ),
            ),

            child: Column(
              children: [

                const SizedBox(height: AppSize.sizedBoxHeight30,),

                Image.asset(
                  "assets/images/auth/img.png",
                  width: 100,
                  height: 105,
                ),

                const Text(
                  AppStrings.survey,
                  style: TextStyle(
                      fontSize: AppSize.fontSize24,
                      fontWeight: AppSize.bold,
                      color:AppColors.mainColor,
                      shadows: [
                        Shadow(
                            color: Colors.grey,
                            offset: Offset(1, 1),
                            blurRadius: 15
                        )
                      ]
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: AppSize.sizedBoxHeight10,),

                Expanded(child: widget1),

                widget2

              ],
            ),

          )
      ),

    );
  }
}
