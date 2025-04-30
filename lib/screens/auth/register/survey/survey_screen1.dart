import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/core/constants/strings.dart';
import 'package:graduation_health_app_project/layout/scaffold_screen_of_survey/scaffold_screen_of_survey.dart';
import 'package:graduation_health_app_project/screens/auth/widgets/drop_down_list.dart';
import 'package:graduation_health_app_project/screens/auth/widgets/material_button_in_survey.dart';
import 'package:graduation_health_app_project/screens/auth/widgets/text_form_field_in_survey.dart';
import 'package:graduation_health_app_project/screens/home/widgets/choice_row_in_survey.dart';
import 'package:graduation_health_app_project/screens/home/widgets/q_row_in_survey.dart';

import '../../../../core/constants/static_lists.dart';
import 'survey_screen2.dart';
class SurveyScreen1 extends StatelessWidget {
   SurveyScreen1 ({super.key});

  final weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreenOfSurvey(

      widget1: Padding(
        padding: const EdgeInsets.all(AppSize.paddingAll20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                QRowInSurvey(textLabel: surveyQ[0]),

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      const Text("Kg",style: TextStyle(fontSize: AppSize.fontSize14,color: AppColors.darkBlueColor),),

                      const SizedBox(width: AppSize.sizedBoxWidth5,),

                      TextFormFieldInSurvey(
                          hintText: "الوزن",
                          controller: weightController,
                          width: 60
                      ),
                    ],
                  ),
                )
              ],
            ),

            const SizedBox(height: AppSize.sizedBoxHeight8),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                QRowInSurvey(textLabel: surveyQ[1]),

                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                       Text("سنة",style: TextStyle(fontSize: AppSize.fontSize16,color: AppColors.darkBlueColor),),

                       SizedBox(width: AppSize.sizedBoxWidth15,),

                      DropDownButtonInSurvey(
                        theList: age,
                        hintText: "الفئة",
                      )

                    ],
                  ),
                )
              ],
            ),

            const SizedBox(height: AppSize.sizedBoxHeight8),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                QRowInSurvey(textLabel: surveyQ[2]),

                const ChoiceRowInSurvey(
                  firstChoice: "ذكر",
                  secondChoice: "أنثي",
                )
              ],
            ),

            const SizedBox(height: AppSize.sizedBoxHeight8),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                QRowInSurvey(textLabel: surveyQ[3]),

                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child:
                      DropDownButtonInSurvey(
                        theList: levelOfEducation ,
                        hintText: "إختر",
                      )
                )
              ],
            ),

            const SizedBox(height: AppSize.sizedBoxHeight8),

            Wrap(
              runSpacing: 8, // مسافة رأسيه لما العناصر تلف
              children: [
                QRowInSurvey(textLabel: surveyQ[4]),

                const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DropDownButtonInSurvey(
                          theList: incomeCategory ,
                          hintText: "إختر",
                        )
                      ],
                    )
                )
              ],
            ),

            const SizedBox(height: AppSize.sizedBoxHeight8),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                QRowInSurvey(textLabel: surveyQ[5]),

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
                QRowInSurvey(textLabel: surveyQ[6]),

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

                QRowInSurvey(textLabel: surveyQ[7]),

                const ChoiceRowInSurvey(
                  firstChoice: "نعم",
                  secondChoice: "لا",
                )
              ],
            ),

          ],

        ),
      ),

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
