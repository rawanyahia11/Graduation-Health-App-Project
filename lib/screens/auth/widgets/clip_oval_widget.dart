import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class ClipOvalWidget extends StatelessWidget{

  final Color color ;
  final VoidCallback onTab ;

  const ClipOvalWidget({super.key, required this.color, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab ,
      child: ClipOval(
        child: Container(
            width: AppSize.width14,
            height: AppSize.height14,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.darkBlueColor ,width: AppSize.width1),
                shape:BoxShape.circle ,
                color: color
            )
        ),
      ),
    );

  }
}
