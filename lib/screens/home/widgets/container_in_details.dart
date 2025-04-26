import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class ContainerInDetails extends StatelessWidget {

  final String text ;
  final Widget image ;
  final Widget theData ;

  const ContainerInDetails({super.key, required this.text, required this.image, required this.theData});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 80),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  margin: const EdgeInsets.all(AppSize.paddingAll30),
                  decoration: BoxDecoration(
                    color: AppColors.lighterColor3,
                    borderRadius: const BorderRadius.all(Radius.circular(AppSize.radius10)),
                  ),
            
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80,right: 35,left: 35,bottom: 35),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
            
                        Text(
                          text,
                          style: TextStyle(
                            fontSize:AppSize.fontSize48,
                            color: AppColors.labelsInDrawerColor,
                            shadows: [
                              Shadow(
                                offset: const Offset(2,2),
                                blurRadius: 5,
                                color: Colors.black.withOpacity(0.5), // ظل خفيف
                              ),
                            ],
                          ),
                        ),
            
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.lighterColor,
                                borderRadius: const BorderRadius.all(Radius.circular(AppSize.radius10)),
                                border: Border.all(color: AppColors.mainColor,width: AppSize.width1 )
                            ),
                                      
                            child: theData,
                                      
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            
                Positioned(
                  top: -30,
                  right : 0 ,
                  left: 0,
                  child: Center(
                    child: Container(
                      width: 133,
                      height: 133,
                      padding: const EdgeInsets.all(AppSize.paddingAll20),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,color: AppColors.sideOfContainerPhotoColor),
                        color: AppColors.whiteColor,
                        boxShadow: const [
                          BoxShadow(
                              color: AppColors.sideOfContainerColor,
                              spreadRadius: 1,
                              blurRadius: 1
                          ),
                        ],
                        shape: BoxShape.circle,
                      ),
            
                      child: SizedBox(
                        height: 95,
                        width: 95,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: image,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
