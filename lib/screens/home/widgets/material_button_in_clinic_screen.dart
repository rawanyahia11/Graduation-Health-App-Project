import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/sizes.dart';
class MaterialButtonInClinicScreen extends StatelessWidget {

  final double heightSize ;
  final double widthSize ;
  final double textSize ;
  final VoidCallback onPressed ;
  final String text ;
  final Widget image ;


  const MaterialButtonInClinicScreen({super.key, required this.heightSize, required this.widthSize, required this.onPressed, required this.text, required this.image, required this.textSize});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        MaterialButton(
            minWidth: widthSize,
            height: heightSize,
            onPressed: onPressed,
            color: AppColors.lighterColor,
            elevation: 4 ,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.radius10),
                side: const BorderSide(color: AppColors.sideOfContainerColor,width: AppSize.width1)
            ),

            child:  Text(
              text,
              style: TextStyle(
                color: AppColors.darkBlueColor,
                fontSize: textSize ,
                shadows: [
                  Shadow(
                    offset: const Offset(1.5,1.5),
                    blurRadius: 6,
                    color: Colors.black.withOpacity(0.3), // ظل خفيف
                  ),
                ],
              ),
            )
        ),

        Positioned(
          top: -10,
          right : -10 ,
          child: Container(
            width: 70,
            height: 70,
            padding: const EdgeInsets.all(AppSize.paddingAll10),
            decoration: BoxDecoration(
                border: Border.all(width: AppSize.width2,color: AppColors.sideOfContainerPhotoColor),
                boxShadow: const [
                  BoxShadow(
                      color: AppColors.whiteColor,
                      spreadRadius: 1,
                      blurRadius: 5
                  ),
                ],
                shape: BoxShape.circle
            ),
            child: SizedBox(
              height: 45,
              width: 45,
              child: FittedBox(
                fit: BoxFit.contain,
                child: image,
              ),
            ),
          ),
        )
      ],
    );
  }
}
