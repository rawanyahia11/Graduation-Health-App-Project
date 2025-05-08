import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/screens/home/widgets/material_button_of_connection.dart';

import '../../../core/constants/app_icons.dart';
class ContainerWithDataInDetailsOfReservation extends StatelessWidget {

  final String labelText ;
  final Widget image ;
  final String typeOfReservation ;
  final String hospitalName ;
  final String countryName ;
  final String doctorName ;
  final String reservationNumber ;
  final String time ;
  final String date ;
  final String location ;


  const ContainerWithDataInDetailsOfReservation ({super.key, required this.labelText, required this.image, required this.typeOfReservation, required this.hospitalName, required this.countryName, required this.doctorName, required this.reservationNumber, required this.time, required this.date, required this.location,});

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
                    margin: const EdgeInsets.all(AppSize.paddingAll25),
                    decoration: BoxDecoration(
                      color: AppColors.lighterColor2,
                      borderRadius: const BorderRadius.all(Radius.circular(AppSize.radius10)),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(top: 80,right: 35,left: 35,bottom: 35),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          Text(
                            labelText,
                            style: TextStyle(
                              fontSize:AppSize.fontSize20,
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

                          const SizedBox(height: 7),

                          Container(
                            width: 294,
                            height: 333,
                            decoration: BoxDecoration(
                                color: AppColors.lighterColor,
                                borderRadius: const BorderRadius.all(Radius.circular(AppSize.radius10)),
                                border: Border.all(color: AppColors.sideOfContainerColor,width: AppSize.width1 )
                            ),

                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5 , horizontal: 15),
                              child: Column(
                                children: [
                                  Text(
                                    typeOfReservation,
                                    style: TextStyle(
                                      fontSize:AppSize.fontSize20,
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

                                  const SizedBox(height: AppSize.sizedBoxHeight10),

                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      hospitalName,
                                      style: const TextStyle(
                                        color: AppColors.darkBlueColor,
                                        fontSize: AppSize.fontSize18,
                                      ),
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      countryName,
                                      style: const TextStyle(
                                        color: AppColors.locationColor,
                                        fontSize: AppSize.fontSize14,
                                      ),
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      doctorName,
                                      style: const TextStyle(
                                        color: AppColors.darkBlueColor,
                                        fontSize: AppSize.fontSize16,
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: AppSize.sizedBoxHeight5,),

                                  Row(
                                    children: [
                                     const Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text(
                                           "رقم الحجز : ",
                                           style: TextStyle(
                                             color: AppColors.darkBlueColor,
                                             fontSize: AppSize.fontSize14,
                                           ),
                                         ),

                                         SizedBox(height: AppSize.sizedBoxHeight50),

                                         Text(
                                           "الموعد : ",
                                           style: TextStyle(
                                             color: AppColors.darkBlueColor,
                                             fontSize: AppSize.fontSize14,
                                           ),
                                         ),
                                       ],
                                     ),

                                      const SizedBox(width: AppSize.sizedBoxWidth30,),

                                      Text(
                                        reservationNumber,
                                        style: const TextStyle(
                                          fontSize: 70,
                                          color: AppColors.reservationNumberColor,
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            time ,
                                            style: TextStyle(
                                              color: AppColors.dateAndTimeColor.withOpacity(0.7),
                                              fontSize: AppSize.fontSize14,
                                            ),
                                          ),

                                          const SizedBox(width: AppSize.sizedBoxWidth5),

                                          Icon(AppIcons.time, color: AppColors.dateAndTimeColor.withOpacity(0.7))
                                        ],
                                      ),

                                      const SizedBox(width: AppSize.sizedBoxWidth15),

                                      Row(
                                        children: [
                                          Text(
                                            date ,
                                            style: TextStyle(
                                              color: AppColors.dateAndTimeColor.withOpacity(0.7),
                                              fontSize: AppSize.fontSize14,
                                            ),
                                          ),

                                          const SizedBox(width: AppSize.sizedBoxWidth5),

                                          Icon(AppIcons.calender, color: AppColors.dateAndTimeColor.withOpacity(0.7))
                                        ],
                                      )
                                    ],
                                  ),

                                  const SizedBox(height: AppSize.sizedBoxHeight10),

                                   Row(
                                    children: [
                                       const Text(
                                        "العنوان",
                                        style: TextStyle(
                                          color: AppColors.darkBlueColor,
                                          fontSize: AppSize.fontSize14,
                                        ),
                                      ),
                                      
                                      Icon(Icons.location_on_outlined,color: AppColors.locationAndEditIconColor.withOpacity(0.8),size: 20,)

                                    ],
                                  ),

                                  Text(
                                    location,
                                    style: TextStyle(
                                      fontSize:AppSize.fontSize18,
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
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(height: AppSize.sizedBoxHeight15,),
                          
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MaterialButtonOfConnection(icon: Icon(Icons.edit_outlined)),
                              SizedBox(width: AppSize.sizedBoxWidth20,),
                              MaterialButtonOfConnection(icon: Icon(Icons.call)),
                              SizedBox(width: AppSize.sizedBoxWidth20,),
                              MaterialButtonOfConnection(icon: Icon(Icons.email_outlined)),

                            ],
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
