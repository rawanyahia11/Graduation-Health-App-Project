import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_health_app_project/core/constants/app_icons.dart';
import 'package:graduation_health_app_project/core/constants/static_lists.dart';
import 'package:graduation_health_app_project/cubits/main_view/main_view_cubit.dart';
import 'package:graduation_health_app_project/cubits/main_view/main_view_state.dart';
import 'package:graduation_health_app_project/screens/home/widgets/drawer.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/sizes.dart';
class MainViewScreen extends StatelessWidget {
    const MainViewScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final GlobalKey <ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final cubit = BlocProvider.of<MainViewCubit>(context);

    return BlocConsumer<MainViewCubit,MainViewStates>(
        listener: (context,index) {},
        builder: (context,index) => Scaffold(
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

          endDrawer: TheDrawer(
            name: "محمد أحمد", id: "30312011623222",
            profilePhoto: Image.asset("assets/images/profile/profile_photo/img.png"),
          ),

          body: navigationScreens[cubit.bottomNavIndex],

          bottomNavigationBar: SafeArea(
            child: Container(
              margin: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.radius30),
                child: SizedBox(
                  height: 65,
                  width: 352,
                  child: BottomNavigationBar(
                      iconSize: 30 ,
                      backgroundColor: AppColors.mainColor,
                      unselectedItemColor: AppColors.whiteColor,
                      selectedItemColor: AppColors.selectedIconColor,
                      type: BottomNavigationBarType.fixed,
                      currentIndex: cubit.bottomNavIndex,
                      onTap: (index) {
                        cubit.changeBottomNavIndex(index: index);
                      },
                      items: const [
                        BottomNavigationBarItem(icon: Icon(Icons.person), label: '',),
                        BottomNavigationBarItem(icon: Icon(Icons.more_time_outlined), label: '',),
                        BottomNavigationBarItem(icon: Icon(Icons.filter_3_outlined), label: '',),
                        BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined), label: '',),
                      ]
                  ),
                ),
              ),
            ),
          ),

        ),
    );
  }

}