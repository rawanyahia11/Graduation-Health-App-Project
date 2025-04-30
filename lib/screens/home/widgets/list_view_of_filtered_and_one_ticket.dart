import 'package:flutter/material.dart';

import '../../../core/constants/app_icons.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/sizes.dart';
import 'divider.dart';
class ListViewOfFilteredAndOneTicket extends StatelessWidget {

  final int itemCount ;
  final Widget nextScreen ;
  final Widget image ;
  final String hospitalName ;
  final String doctorName ;
  final String specializationName ;
  final String time ;
  final String date ;


  const ListViewOfFilteredAndOneTicket({super.key, required this.itemCount, required this.nextScreen, required this.hospitalName, required this.doctorName, required this.specializationName, required this.time, required this.date, required this.image});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal10),
        child: ListView.separated(
          padding: const EdgeInsets.all(AppSize.paddingAll30),
          itemCount: itemCount ,
          itemBuilder: (context,index){
            return Stack(
              clipBehavior: Clip.none,
              children: [
                MaterialButton(
                    minWidth: 327,
                    height: 173,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> nextScreen ));

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
                          hospitalName,
                          style: const TextStyle(
                            color: AppColors.darkBlueColor,
                            fontSize: AppSize.fontSize24,
                          ),
                        ),

                        const SizedBox(height: AppSize.sizedBoxHeight10,),

                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: AppSize.sizedBoxWidth15),
                            Text(
                              doctorName,
                              style: const TextStyle(
                                color: AppColors.darkBlueColor,
                                fontSize: AppSize.fontSize16,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: AppSize.sizedBoxHeight10,),

                        Text(
                          specializationName,
                          style: TextStyle(
                            color: AppColors.darkBlueColor,
                            fontSize: AppSize.fontSize24,
                            shadows: [
                              Shadow(
                                offset: const Offset(1.5,1.5),
                                blurRadius: 6,
                                color: Colors.black.withOpacity(0.3), // ظل خفيف
                              ),
                            ],
                          ),
                        ),

                        const DividerInDrawer(),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal30),
                          child: Row(
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

                              const Spacer(),

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
                        ),
                      ],
                    )
                ),

                Positioned(
                  top: -30,
                  right : 15 ,
                  child: Container(
                    width: 65,
                    height: 65,
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
                        child: image,
                      ),
                    ),
                  ),
                )
              ],
            );
          },
          separatorBuilder: (context,index)=> const SizedBox(height: AppSize.sizedBoxHeight40),
        ),
      ),
    );
  }
}
