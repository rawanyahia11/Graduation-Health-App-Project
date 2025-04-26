import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class RowOfProfileInfo extends StatelessWidget {

  final String label ;
  final String value ;
  final double space ;
  final Widget? editPhoneWidget ;
  final double? space2 ;


  const RowOfProfileInfo({super.key, required this.label, required this.space, required this.value, this.editPhoneWidget, this.space2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Text(
          label,
          style: const TextStyle(
              color:AppColors.labelsInProfileColor,
              fontSize: AppSize.fontSize16
          ),
        ),

        SizedBox(width: space),

        Text(
          value,
          style: const TextStyle(
              color: AppColors.valuesInProfileColor,
              fontSize: AppSize.fontSize16
          ),
        ),

        SizedBox(width: space2,),

        if (editPhoneWidget != null) editPhoneWidget!,





      ],
    );
  }
}
