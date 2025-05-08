import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/screens/home/new_reservation/details/results/places_available_for_the_ticket.dart';

import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../layout/app_bar/white_app_bar.dart';
import '../../../widgets/drawer.dart';
class AvailableTickets extends StatelessWidget {
   AvailableTickets({super.key});

  final GlobalKey <ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.whiteColor,
      appBar: WhiteAppBar(
        showBackButton: true,
        onMenuPressed: (){
          scaffoldKey.currentState?.openEndDrawer();
        },
      ),

      endDrawer: TheDrawer(name: "محمد أحمد", id: "30312011623222", profilePhoto: Image.asset("assets/images/profile/profile_photo/img.png"),),
      
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 35, right: 30),
        child: FloatingActionButton(
          backgroundColor: AppColors.whiteColor,
          shape: CircleBorder(
            side: BorderSide(
              color: AppColors.sideOfContainerPhotoColor,
              width: 2,
            ),
          ),
          elevation: 3,

          onPressed: (){

          },
          child: const Icon(Icons.add , color: AppColors.mainColor, size: 30,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,

      body: Center(
        child: Column(
          children: [
            Text(
              "التذاكر المتوفرة",
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

            const SizedBox(height: AppSize.sizedBoxHeight15,),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal35),
                child: ListView.separated(
                  padding: const EdgeInsets.all(AppSize.paddingAll15),
                  itemCount: 2,
                  itemBuilder: (context,index){
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        MaterialButton(
                            minWidth: 283,
                            height: 120,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> PlacesAvailableForTheTicket()));

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

                                const SizedBox(height: AppSize.sizedBoxHeight30),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal10),
                                  child: SizedBox(
                                    height: 30 ,
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


                                        Text(
                                          "4 كشف",
                                          style: TextStyle(
                                            color: AppColors.availableColor.withOpacity(0.8),
                                            fontSize: AppSize.fontSize16,
                                            shadows: [
                                              Shadow(
                                                offset: const Offset(1.5,1.5),
                                                blurRadius: 7,
                                                color: Colors.black.withOpacity(0.15), // ظل خفيف
                                              ),
                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
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
                                    image: AssetImage("assets/images/profile/tickets_photos/img_1.png"),
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
