import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/core/constants/strings.dart';
import 'package:graduation_health_app_project/screens/home/profile/medical_history/one_his.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/constants/colors.dart';
import '../../../../layout/app_bar/white_app_bar.dart';
import '../../widgets/drawer.dart';
class AllMedHis extends StatelessWidget {
   AllMedHis({super.key});

  final GlobalKey <ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.whiteColor,
      appBar: WhiteAppBar(
        showBackButton: true,
        onMenuPressed: (){
          scaffoldKey.currentState?.openEndDrawer();
        },
      ),

      endDrawer: TheDrawer(name: "محمد أحمد", id: "30312011623222", profilePhoto: Image.asset("assets/images/profile/profile_photo/img.png"),),

      body: Center(
        child: Column(
          children: [
            Text(
              AppStrings.medHis,
              style: TextStyle(
                  fontSize:AppSize.fontSize30,
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

            const SizedBox(height: AppSize.sizedBoxHeight15),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal35),
                child: ListView.separated(
                  padding: const EdgeInsets.all(AppSize.paddingAll15),
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        MaterialButton(
                            minWidth: 283,
                            height: 96,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> OneHis()));

                            },
                            color: AppColors.lighterColor,
                            elevation: 4 ,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(AppSize.radius10),
                                side: BorderSide(color: AppColors.lighterColor2,width: AppSize.width2)
                            ),

                            child:  Column(
                              children: [
                                Text(
                                  "تذكرة 1",
                                  style:TextStyle(
                                    color: AppColors.darkBlueColor,
                                    fontSize: AppSize.fontSize20,
                                    shadows: [
                                      Shadow(
                                        offset: const Offset(1.5,1.5),
                                        blurRadius: 6,
                                        color: Colors.black.withOpacity(0.3), // ظل خفيف
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: AppSize.sizedBoxHeight15,),

                                 SizedBox(
                                   height: 20 ,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                              "27.02.2023",
                                            style: TextStyle(
                                              color: AppColors.dateAndTimeColor.withOpacity(0.7),
                                              fontSize: AppSize.fontSize14,
                                              shadows: [
                                                Shadow(
                                                  offset: const Offset(1.5,1.5),
                                                  blurRadius: 7,
                                                  color: Colors.black.withOpacity(0.2), // ظل خفيف
                                                ),
                                              ],
                                            ),
                                          ),

                                           const SizedBox(width: AppSize.sizedBoxWidth5),

                                           Icon(AppIcons.calender, color: Colors.black.withOpacity(0.2),)
                                        ],
                                      ),

                                      VerticalDivider(
                                        color: Colors.black.withOpacity(0.2),
                                        width: 10,      // المسافة الأفقية اللي بياخدها الخط
                                        thickness: 2,   // سمك الخط نفسه
                                        indent: 2,     // بداية المسافة من فوق
                                        endIndent: 2,
                                      ),

                                      Row(
                                        children: [
                                          Text(
                                            "1.04.2023",
                                            style: TextStyle(
                                              color: AppColors.dateInTicketScreenColor.withOpacity(0.8),
                                              fontSize: AppSize.fontSize14,
                                              shadows: [
                                                Shadow(
                                                  offset: const Offset(1.5,1.5),
                                                  blurRadius: 7,
                                                  color: Colors.black.withOpacity(0.15), // ظل خفيف
                                                ),
                                              ],
                                            ),
                                          ),

                                          const SizedBox(width: AppSize.sizedBoxWidth5),

                                          Icon(AppIcons.calender, color: AppColors.dateInTicketScreenColor.withOpacity(0.7))
                                        ],
                                      )
                                    ],
                                                                   ),
                                 ),
                              ],
                            )
                        ),

                        Positioned(
                          top: -15,
                          right : -15 ,
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2,color: AppColors.sideOfContainerPhotoColor),
                                  boxShadow: const [
                                     BoxShadow(
                                        color: AppColors.whiteColor,
                                        spreadRadius: 1,
                                        blurRadius: 5
                                    ),
                                  ],
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                      image: AssetImage("assets/images/profile/tickets_photos/img.png"),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context,index)=> const SizedBox(height: AppSize.sizedBoxHeight35),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
