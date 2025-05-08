import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../layout/app_bar/white_app_bar.dart';
import '../../../widgets/drawer.dart';
import 'book_ticket.dart';
class PlacesAvailableForTheTicket extends StatelessWidget {
   PlacesAvailableForTheTicket ({super.key});

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

      body: Column(
        children: [
          const SizedBox(height: AppSize.sizedBoxHeight15,),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal35),
              child: ListView.separated(
                padding: const EdgeInsets.all(AppSize.paddingAll15),
                itemCount: 2,
                itemBuilder: (context,index){
                  return MaterialButton(
                      minWidth: 283,
                      height: 190,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> BookTicket()));

                      },
                      color: AppColors.lighterColor,
                      elevation: 4 ,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppSize.radius10),
                          side: BorderSide(color: AppColors.lighterColor2,width: AppSize.width2)
                      ),

                      child:  Padding(
                        padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal15),
                        child: Column(
                          children: [
                            Text(
                              "عيادة الجلدية 1",
                              style:TextStyle(
                                color: AppColors.mainColor,
                                fontSize: AppSize.fontSize20,
                                shadows: [
                                  Shadow(
                                    offset: const Offset(1.5,1.5),
                                    blurRadius: 6,
                                    color: Colors.black.withOpacity(0.2), // ظل خفيف
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: AppSize.sizedBoxHeight10),

                             const Row(
                               children: [
                                 Text(
                                     "المستشفي : ",
                                   style: TextStyle(color: AppColors.locationAndEditIconColor , fontSize: AppSize.fontSize18),
                                 ),

                                 SizedBox(width: AppSize.sizedBoxWidth15,),

                                 Text(
                                   "مستشفى الشاطبي",
                                   style: TextStyle(color: AppColors.darkBlueColor , fontSize: AppSize.fontSize18),
                                 ),
                               ],
                             ),

                            const SizedBox(height: AppSize.sizedBoxHeight10),

                            const Row(
                              children: [
                                Text(
                                  "الطبيب : ",
                                  style: TextStyle(color: AppColors.locationAndEditIconColor , fontSize: AppSize.fontSize18),
                                ),

                                SizedBox(width: AppSize.sizedBoxWidth15,),

                                Text(
                                  "محمد شاهين ",
                                  style: TextStyle(color: AppColors.darkBlueColor , fontSize: AppSize.fontSize18),
                                ),
                              ],
                            ),

                            const SizedBox(height: AppSize.sizedBoxHeight25),

                            RichText(
                                text: const TextSpan(
                                  children: [

                                    TextSpan(
                                        text: "متوفر من  ",
                                        style: TextStyle(fontSize: AppSize.fontSize14,color: AppColors.dateAndTimeColor)
                                    ),

                                    TextSpan(
                                        text: "13:00  ",
                                        style: TextStyle(fontSize: AppSize.fontSize14,color: AppColors.dateAndTimeColor)
                                    ),

                                    TextSpan(
                                        text: "إلى  ",
                                        style: TextStyle(fontSize: AppSize.fontSize14,color: AppColors.dateAndTimeColor)
                                    ),

                                    TextSpan(
                                        text: "17:00",
                                        style: TextStyle(fontSize: AppSize.fontSize14,color: AppColors.dateAndTimeColor)
                                    ),

                                  ]
                                )
                            )
                          ],
                        ),
                      )
                  );
                },
                separatorBuilder: (context,index)=> const SizedBox(height: AppSize.sizedBoxHeight35),
              ),
            ),
          )
        ],
      ),
    );
  }
}
