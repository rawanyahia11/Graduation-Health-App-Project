import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class TextFormFieldInSurvey extends StatelessWidget{

  final String hintText ;
  final TextEditingController controller ;
  final double width ;

  const TextFormFieldInSurvey ({super.key, required this.hintText, required this.controller, required this.width,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: width,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        keyboardType: TextInputType.number,
        cursorHeight: 20,
        cursorWidth: 1,
        cursorColor: AppColors.dateAndTimeColor,

        decoration: InputDecoration(
          fillColor: AppColors.whiteColor,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(vertical: -15, horizontal: 14),
          hintText: hintText,
            hintStyle: const TextStyle(fontSize: AppSize.fontSize14, color: AppColors.dateAndTimeColor),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSize.radius8),
                borderSide: BorderSide(
                  color: AppColors.dateAndTimeColor.withOpacity(0.5),
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColors.darkBlueColor,
                )
            ),


            ),
       ),
      );
  }

}