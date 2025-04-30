import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/core/constants/strings.dart';
import 'package:graduation_health_app_project/layout/scaffold_screen_of_survey/scaffold_screen_of_survey.dart';
import 'package:graduation_health_app_project/screens/auth/widgets/material_button_in_survey.dart';
import 'package:graduation_health_app_project/screens/home/main_view/main_view_screen.dart';

import '../../../../core/constants/static_lists.dart';
import '../../../home/widgets/choice_row_in_survey.dart';
import '../../../home/widgets/q_row_in_survey.dart';
import '../../widgets/drop_down_list.dart';
import '../../widgets/text_form_field_in_survey.dart';
class SurveyScreen3 extends StatelessWidget {
   SurveyScreen3 ({super.key});

  final countOfDaysController1 = TextEditingController();
  final countOfDaysController2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return ScaffoldScreenOfSurvey(

        widget1: Padding(
          padding: const EdgeInsets.all(AppSize.paddingAll20),
          child: Column(
            children: [

              Wrap(
                runSpacing: -20,
                children: [
                  QRowInSurvey(textLabel: surveyQ[15]),

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
                  QRowInSurvey(textLabel: surveyQ[16]),

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
                  QRowInSurvey(textLabel: surveyQ[17]),

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
                  QRowInSurvey(textLabel: surveyQ[18]),

                  const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          DropDownButtonInSurvey(
                            theList: descriptionOfHealth ,
                            hintText: "إختر",
                          )
                        ],
                      )
                  )
                ],
              ),

              const SizedBox(height: AppSize.sizedBoxHeight8),

             Wrap(
               runSpacing: -20,
               children: [

                 QRowInSurvey(textLabel: surveyQ[19]),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     const Text("يوماً",style: TextStyle(fontSize: AppSize.fontSize14,color: AppColors.darkBlueColor),),

                     const SizedBox(width: AppSize.sizedBoxWidth5,),

                     TextFormFieldInSurvey(
                         hintText: "عدد الأيام",
                         controller: countOfDaysController1,
                         width: 80
                     ),
                   ],
                 ),

               ],
             ),

              const SizedBox(height: AppSize.sizedBoxHeight8),

              Wrap(
                runSpacing: -20,
                children: [

                  QRowInSurvey(textLabel: surveyQ[20]),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("يوماً",style: TextStyle(fontSize: AppSize.fontSize14,color: AppColors.darkBlueColor),),

                      const SizedBox(width: AppSize.sizedBoxWidth5,),

                      TextFormFieldInSurvey(
                          hintText: "عدد الأيام",
                          controller: countOfDaysController2,
                          width: 80
                      ),
                    ],
                  ),

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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MainViewScreen()));
                  },
                  textColor: AppColors.whiteColor,
                  fillColor: AppColors.mainColor,
                  text: AppStrings.finish,
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
