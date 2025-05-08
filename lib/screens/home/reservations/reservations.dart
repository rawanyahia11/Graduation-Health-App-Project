import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/screens/home/reservations/reservations_details.dart';

import '../../../core/constants/app_icons.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/sizes.dart';
import '../widgets/divider.dart';

class Reservations extends StatelessWidget {


  const Reservations({super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const SizedBox(height: AppSize.sizedBoxHeight30,),

        Image.asset(
          "assets/images/home_photos/img_1.png",
          width: 340,
          height: 200,
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(AppSize.paddingAll30),
            child: ListView.separated(
                itemBuilder: (context,index) => Stack(
                  children: [

                    MaterialButton(
                        minWidth: 327,
                        height: 141,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ReservationDetails() ));

                        },
                        color: AppColors.lighterColor,
                        elevation: 4 ,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSize.radius10),
                            side: const BorderSide(color: AppColors.sideOfContainerColor,width: AppSize.width1)
                        ),

                        child:  Column(
                          children: [
                            Text(
                              "عيادة - مخ وأعصاب",
                              style: TextStyle(
                                fontSize: AppSize.fontSize20,
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

                            const SizedBox(height: AppSize.sizedBoxHeight25,),

                            const Row(
                              children: [
                                SizedBox(width: AppSize.sizedBoxWidth15),
                                Text(
                                  "دكتور / محمد شاهين",
                                  style: TextStyle(
                                    color: AppColors.darkBlueColor,
                                    fontSize: AppSize.fontSize14,
                                  ),
                                ),

                                Spacer(),

                                Row(
                                  children: [
                                    Text(
                                      "مستشفى الشاطبي",
                                      style: TextStyle(
                                        color: AppColors.darkBlueColor,
                                        fontSize: AppSize.fontSize16,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),

                            const DividerInDrawer(),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal30),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "16:30" ,
                                        style: TextStyle(
                                          color: AppColors.dateAndTimeColor.withOpacity(0.7),
                                          fontSize: AppSize.fontSize14,
                                        ),
                                      ),

                                      const SizedBox(width: AppSize.sizedBoxWidth5),

                                      Icon(AppIcons.time, color: AppColors.dateAndTimeColor.withOpacity(0.7))
                                    ],
                                  ),

                                  const Spacer(),

                                  Row(
                                    children: [
                                      Text(
                                        "27.02.2023" ,
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
                            ),

                          ],
                        )
                    ),

                    Positioned(
                      top: 7,
                      right : 7 ,
                      child: Container(
                        width: 55,
                        height: 55,
                        padding: const EdgeInsets.all(AppSize.paddingAll10),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2,color: AppColors.sideOfContainerPhotoColor),
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
                            child: Image.asset("assets/images/auth/img.png"),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                separatorBuilder: (context,index) => const SizedBox(height: AppSize.sizedBoxHeight25,),
                itemCount: 7
            ),
          ),
        )


      ],

    );
  }
}
