import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/screens/home/profile/medical_history/details_of_his/clinic/clinic_screen.dart';
import 'package:graduation_health_app_project/screens/home/widgets/divider.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/constants/colors.dart';
import '../../widgets/drawer.dart';
class OneHis extends StatelessWidget {
  OneHis({super.key});

  final GlobalKey <ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        foregroundColor: AppColors.mainColor,

        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(AppIcons.arrow1),
        ),

        actions: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Image.asset(
              "assets/images/auth/img.png",
            ),
          ),
          IconButton(
            onPressed:(){
              scaffoldKey.currentState?.openEndDrawer();
            },

            icon: const Icon(AppIcons.menu),
          ),
        ],
      ),

      endDrawer: TheDrawer(name: "محمد أحمد", id: "30312011623222", profilePhoto: Image.asset("assets/images/profile/profile_photo/img.png"),),

      body: Center(
        child: Column(
          children: [

            Text(
              "تذكرة 1",
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

            const SizedBox(height: AppSize.sizedBoxHeight30,),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal10),
                child: ListView.separated(
                  padding: const EdgeInsets.all(AppSize.paddingAll30),
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        MaterialButton(
                            minWidth: 327,
                            height: 193,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ClinicScreen()));

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
                                  "حجز عيادة",
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
                                const SizedBox(height: AppSize.sizedBoxHeight10,),

                                const Row(
                                  children: [
                                    Text(
                                      "دكتور/ أحمد سليم",
                                      style: TextStyle(
                                        color: AppColors.darkBlueColor,
                                        fontSize: AppSize.fontSize16,
                                      ),
                                    ),

                                    Spacer(),

                                    Text(
                                      "مستشفى الشاطبي",
                                      style: TextStyle(
                                        color: AppColors.darkBlueColor,
                                        fontSize: AppSize.fontSize20,
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: AppSize.sizedBoxHeight10,),

                                Text(
                                  "عيادة - القلب والأوعية الدموية",
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
                                            "16:30",
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
                                            "27.02.2023",
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
                            child: Image.asset(
                              "assets/images/auth/img.png",
                              fit: BoxFit.contain,
                              width: 45,  // حجم الصورة الفعلي
                              height: 45,
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
