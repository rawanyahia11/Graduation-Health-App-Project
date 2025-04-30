import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class QRowInSurvey extends StatelessWidget {

  final String textLabel ;

  const QRowInSurvey ({super.key, required this.textLabel,});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        // ClipOval(
        //   child: Container(
        //       margin: const EdgeInsets.only(top: 4),
        //       width: 5 ,
        //       height: 5 ,
        //       decoration: const BoxDecoration(
        //           shape:BoxShape.circle ,
        //           color: AppColors.darkBlueColor
        //       )
        //   ),
        // ),

        //const SizedBox(width: AppSize.sizedBoxWidth15),

        Text(
          textLabel,
          style: const TextStyle(
            fontSize: AppSize.fontSize18,
            color: AppColors.darkBlueColor,
          ),
        )

      ],
    );
  }
}
