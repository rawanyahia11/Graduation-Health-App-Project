import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/screens/auth/widgets/clip_oval_widget.dart';

import '../../../core/constants/colors.dart';
class ChoiceRowInSurvey extends StatefulWidget {

  final String firstChoice ;
  final String secondChoice ;

  const ChoiceRowInSurvey({super.key, required this.firstChoice, required this.secondChoice});

  @override
  State<ChoiceRowInSurvey> createState() => _ChoiceRowInSurveyState();
}

class _ChoiceRowInSurveyState extends State<ChoiceRowInSurvey> {
  @override
  Widget build(BuildContext context) {

    String? selectedAnswer ;

    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          ClipOvalWidget(
              color: selectedAnswer == widget.firstChoice ? AppColors.mainColor : AppColors.whiteColor,
              onTab: (){
                setState(() {
                  selectedAnswer = widget.firstChoice  ;
                });

              }
          ),
          const SizedBox(width: AppSize.width5,),

          Text(
            widget.firstChoice,
            style: const TextStyle(color:AppColors.darkBlueColor,fontSize: AppSize.fontSize16),
          ),

          const SizedBox(width: AppSize.width14),

          ClipOvalWidget(
              color: selectedAnswer ==widget.secondChoice ? AppColors.mainColor : AppColors.whiteColor,
              onTab: (){
                setState(() {
                  selectedAnswer = widget.secondChoice  ;
                });

              }
          ),

          const SizedBox(width: 5,),

          Text(
            widget.secondChoice,
            style: const TextStyle(color: Color(0xff003F5F),fontSize: 16),
          ),

        ],
      ),
    );
  }
}
