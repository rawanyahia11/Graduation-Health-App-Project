import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class MaterialButtonInSurvey extends StatelessWidget {

  final VoidCallback onPressed ;
  final String text ;
  final Color textColor ;
  final Color fillColor ;

  const MaterialButtonInSurvey({super.key, required this.onPressed, required this.text, required this.textColor, required this.fillColor});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        minWidth: 100,
        height: 48,
        textColor: textColor,
        color: fillColor ,
        elevation: 5 ,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.radius16),
            side: const BorderSide(color:AppColors.mainColor)
        ),
        child: Text(text,style: const TextStyle(fontSize: AppSize.fontSize20)),
    );
  }
}
