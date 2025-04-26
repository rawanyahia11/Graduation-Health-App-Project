import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class MaterialButtonWidgetInNewReservation extends StatelessWidget {

  final VoidCallback onPressed ;
  final Widget image ;
  final EdgeInsetsGeometry? padding ;
  final String text ;

  const MaterialButtonWidgetInNewReservation({super.key, required this.onPressed, this.padding, required this.image, required this.text});


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        child: MaterialButton(
          height: 120,
          minWidth: 150,
          onPressed: onPressed ,
          color: AppColors.whiteColor,
          elevation: 7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.radius10),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: image,
                ),

              ),

              const SizedBox(height: 7,),
              Text(
                text,
                style: const TextStyle(fontSize: AppSize.fontSize20, color: AppColors.darkBlueColor),
              ),
            ],
          )
        )
    );
  }

}