import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/app_icons.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/core/constants/strings.dart';
import 'package:graduation_health_app_project/screens/home/profile/medical_history/all_med_his.dart';
import 'package:graduation_health_app_project/screens/home/widgets/row_of_profile_info.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(AppSize.paddingHorizontal30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: AppColors.whiteColor),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.darkColor.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 10
                      ),
                    ],
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/profile/profile_photo/img.png"),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                 Positioned(
                    bottom: 9,
                    right: 9,
                    child: Icon(AppIcons.changeProfilePhotoIcon,color: AppColors.dateAndTimeColor.withOpacity(0.4),)
                )
              ],
            ),

            const SizedBox(height: AppSize.sizedBoxHeight10),
            
            Text(
              "أحمد محمد عبدالله",
              style: TextStyle(
                  color: AppColors.valuesInProfileColor,
                  fontSize: AppSize.fontSize20,
                  shadows: [
                    BoxShadow(
                        offset: const Offset(2, 2),
                        color: AppColors.darkColor.withOpacity(0.3),
                        blurRadius: 3

                    )
                  ]),
            ),

            const SizedBox(height: AppSize.sizedBoxHeight10),

            Container(
              decoration: BoxDecoration(
                color: AppColors.darkOffWhiteColor,
                borderRadius: BorderRadius.circular(AppSize.radius10),


              ),
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal15,vertical: AppSize.paddingVertical30),
                child: Column(
                  children: [

                    const RowOfProfileInfo(
                        label: "السن",
                        space: 110,
                        value: "22"
                    ),

                    const SizedBox(height: AppSize.sizedBoxHeight15),

                    const RowOfProfileInfo(
                        label: "النوع",
                        space: 110,
                        value: "ذكر"
                    ),

                    const SizedBox(height: AppSize.sizedBoxHeight15),

                    const RowOfProfileInfo(
                        label: "فصيلة الدم",
                        space: 75,
                        value: "A"
                    ),

                    const SizedBox(height: AppSize.sizedBoxHeight10),

                    RowOfProfileInfo(
                        label: "رقم الهاتف",
                        space: 35,
                        value: "01222520550",
                        space2: 30,
                      editPhoneWidget: Expanded(

                        child: InkWell(
                          onTap: (){

                          },
                          child: const Row(
                            children: [
                               Icon(Icons.edit_outlined, color: AppColors.locationAndEditIconColor, size: 16,),

                               Text("تعديل",style: TextStyle(fontSize: AppSize.fontSize16,color: AppColors.locationAndEditIconColor),)
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: AppSize.sizedBoxHeight15),

                    const RowOfProfileInfo(
                        label: "العنوان",
                        space: 75,
                        value: "الغربية - طنطا"
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: AppSize.sizedBoxHeight35),


            Row(
              children: [
                MaterialButton(
                  minWidth: 150,
                  height: 48,
                  color: AppColors.lighterColor,
                  elevation: 5 ,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.radius16),
                      side: const BorderSide(color: AppColors.darkOffWhiteColor)
                  ),
                  child: const Text(AppStrings.medHis,style: TextStyle(fontSize: AppSize.fontSize18, color: AppColors.labelsInProfileColor)),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> AllMedHis()));
                  },
                ),

                const Spacer(),

                MaterialButton(
                  minWidth: 150,
                  height: 48,
                  color: AppColors.lighterColor ,
                  elevation: 5 ,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.radius16),
                      side: const BorderSide(color: AppColors.darkOffWhiteColor)
                  ),
                  child: const Text(AppStrings.yourTickets,style: TextStyle(fontSize: AppSize.fontSize18, color: AppColors.labelsInProfileColor)),
                  onPressed: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                  },
                ),
              ],
            ),

            const SizedBox(height: AppSize.sizedBoxHeight10,)









          ],
        ),
      ),

    );

  }
}
