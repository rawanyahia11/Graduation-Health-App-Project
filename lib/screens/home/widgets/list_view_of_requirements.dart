import 'package:flutter/material.dart';

import '../../../core/constants/app_icons.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/sizes.dart';
import 'divider.dart';
class ListViewOfRequirements extends StatelessWidget {

  final int itemCount ;
  final Widget nextScreen ;
  final String requirementType ;
  final String doctorName ;
  final String date ;
  final String clinicName ;

  const ListViewOfRequirements({super.key, required this.itemCount, required this.nextScreen, required this.requirementType, required this.doctorName, required this.date, required this.clinicName});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal10),
        child: ListView.separated(
          padding: const EdgeInsets.all(AppSize.paddingAll20),
          itemCount: itemCount ,
          itemBuilder: (context,index){
            return MaterialButton(
                    minWidth: 327,
                    height: 141,
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
                          requirementType,
                          style: TextStyle(
                            fontSize: AppSize.fontSize18,
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

                        const SizedBox(height: AppSize.sizedBoxHeight10,),

                        Row(
                          children: [
                            const SizedBox(width: AppSize.sizedBoxWidth15),
                            Text(
                              doctorName,
                              style: const TextStyle(
                                color: AppColors.darkBlueColor,
                                fontSize: AppSize.fontSize16,
                              ),
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

                        const DividerInDrawer(),

                        Text(
                          clinicName,
                          style: TextStyle(
                            color: AppColors.darkBlueColor,
                            fontSize: AppSize.fontSize16,
                            fontWeight: AppSize.bold,
                            shadows: [
                              Shadow(
                                offset: const Offset(1.5,1.5),
                                blurRadius: 6,
                                color: Colors.black.withOpacity(0.3), // ظل خفيف
                              ),
                            ],
                          ),
                        ),

                      ],
                    )
                );
          },
          separatorBuilder: (context,index)=> const SizedBox(height: AppSize.sizedBoxHeight20),
        ),
      ),
    );
  }
}
