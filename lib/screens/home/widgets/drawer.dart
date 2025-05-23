import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/app_icons.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/core/constants/strings.dart';
import 'package:graduation_health_app_project/screens/auth/first_screen/first_screen.dart';
import 'package:graduation_health_app_project/screens/home/notifications/notifications_screen.dart';
import 'package:graduation_health_app_project/screens/home/requirements/requirements_screen.dart';
import 'package:graduation_health_app_project/screens/home/widgets/divider.dart';
import 'package:graduation_health_app_project/screens/home/widgets/list_tile_in_drawer.dart';
import '../main_view/main_view_screen.dart';
class TheDrawer extends StatelessWidget {
  const TheDrawer({super.key, required this.name, required this.id, required this.profilePhoto});

  final String name;
  final String id;
  final Widget profilePhoto ;

  @override
  Widget build(BuildContext context) {

    return Drawer(
          child: Padding(
            padding: const EdgeInsets.all(AppSize.paddingAll35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Row(
                  children: [
                    CircleAvatar(radius: 35,child:profilePhoto ),

                    const SizedBox(width: AppSize.sizedBoxWidth15,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text( name ,style: const TextStyle(fontSize: AppSize.fontSize18, fontWeight: AppSize.bold, color:AppColors.darkBlueColor),),
                        Text(id,style: const TextStyle(fontSize: AppSize.fontSize14, color: AppColors.darkColor),),
                      ],
                    )
                  ],
                ),

                const SizedBox(height: AppSize.sizedBoxHeight30),

                ListTileInDrawer(
                    textLabel: AppStrings.profile,
                    icon: AppIcons.person,
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainViewScreen(initialIndex: 0), // أو أي انديكس انت عايزه
                        ),
                            (route) => false,
                      );                    }
                ),

                const DividerInDrawer(),

                ListTileInDrawer(
                    textLabel: AppStrings.mainPage,
                    icon: AppIcons.home,
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainViewScreen(initialIndex: 1), // أو أي انديكس انت عايزه
                        ),
                            (route) => false,
                      );                    }
                ),

                const DividerInDrawer(),

                ListTileInDrawer(
                    textLabel:"الحجوزات مفلترة",
                    icon: Icons.filter_3_outlined ,
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainViewScreen(initialIndex: 2), // أو أي انديكس انت عايزه
                        ),
                            (route) => false,
                      );                    }
                ),

                const DividerInDrawer(),

                ListTileInDrawer(
                    textLabel: AppStrings.reservations,
                    icon: AppIcons.reservations,
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainViewScreen(initialIndex: 3), // أو أي انديكس انت عايزه
                        ),
                            (route) => false,
                      );
                    }
                ),

                const DividerInDrawer(),

                ListTileInDrawer(
                    textLabel: AppStrings.notifications,
                    icon: AppIcons.notifications,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NotificationsScreen()),
                      );
                    }
                ),

                const DividerInDrawer(),

                ListTileInDrawer(
                    textLabel: AppStrings.requirements,
                    icon: AppIcons.requirements,
                    onTap: (){
                      //Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RequirementsScreen()),
                      );
                    }
                ),

                const DividerInDrawer(),

                ListTileInDrawer(
                    textLabel: AppStrings.logout,
                    icon: AppIcons.logout,
                    iconsColor: AppColors.errorColor,
                    onTap: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=> const FirstScreen()));

                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const FirstScreen()), (Route<dynamic> route) => false);
                    }
                ),


              ],
            ),
          ),
    );
  }
}
