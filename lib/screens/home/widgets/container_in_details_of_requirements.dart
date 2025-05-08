import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/app_icons.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class ContainerInDetailsOfRequirements extends StatelessWidget {

  final String text ;
  final Widget image ;
  final Widget theData ;
  final Color outerContainerColor ;
  final Color innerContainerColor ;
  final Color sideOfInnerContainerColor ;
  final double innerContainerWidth ;
  final double innerContainerHeight ;
  final String doctorName ;
  final String clinicName ;
  final String hospitalName ;
  final String date ;
  final Widget finalText ;
  final String requirementsName ;
  final VoidCallback? onTap ;


  const ContainerInDetailsOfRequirements ({super.key, required this.text, required this.image, required this.theData, required this.outerContainerColor, required this.innerContainerColor, required this.sideOfInnerContainerColor, required this.innerContainerWidth, required this.innerContainerHeight, required this.doctorName, required this.clinicName, required this.hospitalName, required this.date, required this.finalText, required this.requirementsName, this.onTap});

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
                        padding: const EdgeInsets.only(top: 90,right: 10,left: 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              text,
                              style: TextStyle(
                                fontSize:AppSize.fontSize20,
                                color: AppColors.darkBlueColor,
                                fontWeight: AppSize.bold,
                                shadows: [
                                  Shadow(
                                    offset: const Offset(2,2),
                                    blurRadius: 5,
                                    color: Colors.black.withOpacity(0.5), // ظل خفيف
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: AppSize.sizedBoxHeight20),

                            GestureDetector(
                              onTap: onTap,
                              child: Container(
                                width: innerContainerWidth,
                                height: innerContainerHeight,
                                decoration: BoxDecoration(
                                    color: innerContainerColor,
                                    borderRadius: const BorderRadius.all(Radius.circular(AppSize.radius10)),
                                    border: Border.all(color: sideOfInnerContainerColor,width: AppSize.width1 )
                                ),

                                child: Center(child: theData),
                              ),
                            ),

                            const SizedBox(height: AppSize.sizedBoxHeight30),

                            Padding(
                              padding: const EdgeInsets.all(AppSize.paddingAll20),
                              child: RichText(
                                  text: TextSpan(
                                    children: [

                                      const TextSpan(
                                        text: "قام الدكتور : ",
                                        style: TextStyle(fontSize: AppSize.fontSize16,color: AppColors.darkBlueColor)
                                      ),

                                      TextSpan(
                                        text: doctorName,
                                        style: TextStyle(
                                          fontSize:AppSize.fontSize16,
                                          color: AppColors.darkBlueColor,
                                          fontWeight: AppSize.bold,
                                          shadows: [
                                            Shadow(
                                              offset: const Offset(2,2),
                                              blurRadius: 5,
                                              color: Colors.black.withOpacity(0.5), // ظل خفيف
                                            ),
                                          ],
                                        ),
                                      ),

                                      TextSpan(
                                          text: " بطلب هذه $requirementsName ، عندما قمت بزيارة عيادة : ",
                                          style: const TextStyle(fontSize: AppSize.fontSize16,color: AppColors.darkBlueColor)
                                      ),

                                      TextSpan(
                                        text: clinicName,
                                        style: TextStyle(
                                          fontSize:AppSize.fontSize16,
                                          color: AppColors.darkBlueColor,
                                          fontWeight: AppSize.bold,
                                          shadows: [
                                            Shadow(
                                              offset: const Offset(2,2),
                                              blurRadius: 5,
                                              color: Colors.black.withOpacity(0.5), // ظل خفيف
                                            ),
                                          ],
                                        ),
                                      ),

                                      const TextSpan(
                                          text: "في مستشفى : ",
                                          style: TextStyle(fontSize: AppSize.fontSize16,color: AppColors.darkBlueColor)
                                      ),

                                      TextSpan(
                                        text: hospitalName,
                                        style: TextStyle(
                                          fontSize:AppSize.fontSize16,
                                          color: AppColors.darkBlueColor,
                                          fontWeight: AppSize.bold,
                                          shadows: [
                                            Shadow(
                                              offset: const Offset(2,2),
                                              blurRadius: 5,
                                              color: Colors.black.withOpacity(0.5), // ظل خفيف
                                            ),
                                          ],
                                        ),
                                      ),

                                      const TextSpan(
                                          text: "، و ذالك في تاريخ : ",
                                          style: TextStyle(fontSize: AppSize.fontSize16,color: AppColors.darkBlueColor)
                                      ),

                                      TextSpan(
                                        text: date,
                                        style: TextStyle(
                                          fontSize:AppSize.fontSize16,
                                          color: AppColors.darkBlueColor,
                                          fontWeight: AppSize.bold,
                                          shadows: [
                                            Shadow(
                                              offset: const Offset(2,2),
                                              blurRadius: 5,
                                              color: Colors.black.withOpacity(0.5), // ظل خفيف
                                            ),
                                          ],
                                        ),
                                      ),

                                      const WidgetSpan(
                                          child: Icon(AppIcons.calender, color: AppColors.darkBlueColor, size: 20,)
                                      ),
                                    ]
                                  ),
                              ),
                            ),

                            const SizedBox(height: AppSize.sizedBoxHeight20),

                            finalText ,

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