import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/core/constants/strings.dart';
import 'package:graduation_health_app_project/layout/scaffold_screen_of_survey/scaffold_screen_of_survey.dart';
import 'package:graduation_health_app_project/screens/auth/widgets/material_button_in_survey.dart';

import 'survey_screen2.dart';
class SurveyScreen1 extends StatelessWidget {
  const SurveyScreen1 ({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreenOfSurvey(

      widget1: const Column(),

      widget2:  Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(AppSize.paddingAll25),
          child: MaterialButtonInSurvey(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SurveyScreen2()));
              },
              text: AppStrings.next,
              textColor: AppColors.whiteColor,
              fillColor: AppColors.mainColor
          ),
        ),
      ),
    );
  }
}
