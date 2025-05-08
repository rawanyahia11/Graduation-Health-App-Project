import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class ContainerInDetailsOfProfile extends StatelessWidget {

  final String text ;
  final Widget image ;
  final Widget theData ;
  final double labelSize ;
  final Color outerContainerColor ;
  final Color innerContainerColor ;
  final Color sideOfInnerContainerColor ;
  final double innerContainerWidth ;
  final double innerContainerHeight ;

  const ContainerInDetailsOfProfile ({super.key, required this.text, required this.image, required this.theData, required this.labelSize, required this.outerContainerColor, required this.innerContainerColor, required this.sideOfInnerContainerColor, required this.innerContainerWidth, required this.innerContainerHeight});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 80),
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    margin: const EdgeInsets.all(AppSize.paddingAll20),
                    width: 350,
                    height: 538 ,
                    decoration: BoxDecoration(
                      color: outerContainerColor,
                      borderRadius: const BorderRadius.all(Radius.circular(AppSize.radius10)),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(top: 80,right: 25,left: 25,bottom: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            text,
                            style: TextStyle(
                              fontSize:labelSize,
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

                          const SizedBox(height: 5),

                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: innerContainerHeight,
                              decoration: BoxDecoration(
                                  color: innerContainerColor,
                                  borderRadius: const BorderRadius.all(Radius.circular(AppSize.radius10)),
                                  border: Border.all(color: sideOfInnerContainerColor,width: AppSize.width1 )
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
        ),
      )
    );
  }
}
