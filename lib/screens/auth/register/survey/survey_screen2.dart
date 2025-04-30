import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/core/constants/strings.dart';
import 'package:graduation_health_app_project/layout/scaffold_screen_of_survey/scaffold_screen_of_survey.dart';
import 'package:graduation_health_app_project/screens/auth/register/survey/survey_screen3.dart';
import 'package:graduation_health_app_project/screens/auth/widgets/material_button_in_survey.dart';

import '../../../../core/constants/static_lists.dart';
import '../../../home/widgets/choice_row_in_survey.dart';
import '../../../home/widgets/q_row_in_survey.dart';
class SurveyScreen2 extends StatelessWidget {
  const SurveyScreen2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreenOfSurvey(

      widget1: Padding(
        padding: const EdgeInsets.all(AppSize.paddingAll20),
        child: Column(
          children: [

            Wrap(
              runSpacing: 8,
              children: [
                QRowInSurvey(textLabel: surveyQ[8]),

                const ChoiceRowInSurvey(
                 firstChoice: "نعم",
                 secondChoice: "لا",
                )
              ],
            ),

            const SizedBox(height: AppSize.sizedBoxHeight8),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                QRowInSurvey(textLabel: surveyQ[9]),

                const ChoiceRowInSurvey(
                  firstChoice: "نعم",
                  secondChoice: "لا",
                )
              ],
            ),

            const SizedBox(height: AppSize.sizedBoxHeight8),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                QRowInSurvey(textLabel: surveyQ[10]),

                const ChoiceRowInSurvey(
                  firstChoice: "نعم",
                  secondChoice: "لا",
                )
              ],
            ),

            const SizedBox(height: AppSize.sizedBoxHeight8),

            Wrap(
              runSpacing: -20,
              children: [
                QRowInSurvey(textLabel: surveyQ[11]),

                const ChoiceRowInSurvey(
                  firstChoice: "نعم",
                  secondChoice: "لا",
                )
              ],
            ),

            const SizedBox(height: AppSize.sizedBoxHeight8),

            Wrap(
              runSpacing: 8,
              children: [
                QRowInSurvey(textLabel: surveyQ[12]),

                const ChoiceRowInSurvey(
                  firstChoice: "نعم",
                  secondChoice: "لا",
                )
              ],
            ),

            const SizedBox(height: AppSize.sizedBoxHeight8),

            Wrap(
              runSpacing: 8,
              children: [
                QRowInSurvey(textLabel: surveyQ[13]),

                const ChoiceRowInSurvey(
                  firstChoice: "نعم",
                  secondChoice: "لا",
                )
              ],
            ),

            const SizedBox(height: AppSize.sizedBoxHeight8),

            Wrap(
              runSpacing: 8,
              children: [
                QRowInSurvey(textLabel: surveyQ[14]),

                const ChoiceRowInSurvey(
                  firstChoice: "نعم",
                  secondChoice: "لا",
                )
              ],
            ),

          ],
        ),
      ),

      widget2:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25 ,right: 25),
            child: MaterialButtonInSurvey(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SurveyScreen3()));
              },
              textColor: AppColors.whiteColor,
              fillColor: AppColors.mainColor,
              text: AppStrings.next,
            )
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 25,left: 25),
            child: MaterialButtonInSurvey(
              onPressed: (){
                Navigator.pop(context);
              },
              textColor: AppColors.mainColor,
              fillColor: AppColors.whiteColor,
              text: AppStrings.goBack,
            )
          ),

        ],
      )
    );
  }
}
