import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/cubits/notifications/notifications_cubit.dart';
import 'package:graduation_health_app_project/cubits/notifications/notifications_states.dart';
import '../requirements/details/tests/test_details.dart';
import '../widgets/custom_notification_card.dart';
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final cubit = BlocProvider.of<NotificationsCubit>(context);

    return Scaffold(
      extendBodyBehindAppBar: true,   // مهم عشان يرسم ورا الـ AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(AppSize.paddingAll15),
          child: Container(
              alignment: Alignment.center,
              height: 31,
              width: 31,
              decoration: const BoxDecoration(
                color:  AppColors.mainColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.home_outlined, color: Colors.white,size: 18, )
          ),
        ),

        actions: [
          IconButton(
              onPressed: (){Navigator.pop(context);},
              icon: const Icon((Icons.arrow_forward),color:AppColors.mainColor)
          )
        ],

      ),


      body: Stack(
        children: [
          Positioned(
              top: -95,
              right: -70,

              child: Container(
                height: 236,
                width: 236,
                decoration: BoxDecoration(
                  color:AppColors.lighterColor,
                  borderRadius: BorderRadius.circular(120)
                ),
              )
          ),

          Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 100 , bottom: 20),
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "الإشعارات",
                        style: TextStyle(
                            color: AppColors.darkBlueColor,
                            fontSize: AppSize.fontSize24,
                            shadows: [
                              Shadow(
                                offset: const Offset(2,2),
                                blurRadius: 5,
                                color: Colors.black.withOpacity(0.2), // ظل خفيف
                              ),
                            ],
                        ),
                      ),

                      const SizedBox(width: AppSize.sizedBoxWidth10),

                      ClipOval(
                        child: Container(
                          width: 26,
                          height: 24,
                          decoration: const BoxDecoration(
                            color: AppColors.redColorInNotifications,
                          ),
                          child: const Center(
                              child: Text(
                                  "5",
                                style: TextStyle(color: AppColors.whiteColor),
                              )
                          ),
                        ),
                      ),
                    ],
                  ),

                  const Divider(color: AppColors.mainColor, height: 40, thickness:1.4,),

                 BlocConsumer<NotificationsCubit,NotificationsStates>(
                     listener: (context, state){

                     },
                     builder: (context, state) {
                       if (state is NotificationsLoadedState){
                         return Expanded(
                           child: ListView.separated(
                               itemBuilder: (context, index){
                                 final model = cubit.notificationsList[index];
                                   return InkWell(
                                     onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TestDetails()));
                                        cubit.markAllAsRead();
                                     },

                                     // onTap: (){
                                     //   if (index == 0){
                                     //     Navigator.push(context, MaterialPageRoute(builder: (context) => const TestDetails()));
                                     //     cubit.markAllAsRead();
                                     //   }
                                     //
                                     //   else if (index == 1){
                                     //     Navigator.push(context, MaterialPageRoute(builder: (context) => const RaysDetails()));
                                     //     cubit.markAllAsRead();
                                     //   }
                                     // },

                                     child: CustomNotificationCard(model: model),
                                   );
                                 },
                               //separatorBuilder: (context,index) => const DividerInDrawer(),
                               separatorBuilder: (context,index) => const SizedBox(height: AppSize.sizedBoxHeight10,),
                               itemCount: cubit.notificationsList.length
                           ),
                         );
                       }

                       return  const Center(child: Text("لا توجد إشعارات"),);

                     }
                 )

                ],
              ),
          )
        ],
      ),
    );
  }
}


/*
Expanded(
                       child: ListView.separated(
                           itemBuilder: (context, index){
                             final model = cubit.notificationsList[index];

                             if (state is NotificationsLoadedState){
                               return GestureDetector(
                                 onTap: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const TestDetails()));
                                   cubit.markAllAsRead();
                                 },
                                 child: CustomNotificationCard(model: model),
                               );
                             }

                             return  const Center(child: Text("لا توجد إشعارات"),);
                           },
                           //separatorBuilder: (context,index) => const DividerInDrawer(),
                           separatorBuilder: (context,index) => const SizedBox(height: AppSize.sizedBoxHeight10,),

                           itemCount: cubit.notificationsList.length
                       ),
                     ),
 */
