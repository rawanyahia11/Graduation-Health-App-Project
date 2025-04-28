import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/screens/home/notifications/notifications_screen.dart';

import '../../core/constants/app_icons.dart';
import '../../core/constants/colors.dart';
class WhiteAppBar extends StatelessWidget implements PreferredSizeWidget {

  final bool showBackButton;
  final VoidCallback onMenuPressed ;

  const WhiteAppBar({super.key, required this.showBackButton, required this.onMenuPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      foregroundColor: AppColors.mainColor,

      leading: showBackButton ?
      IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: const Icon(AppIcons.arrow1),
      ) :
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationsScreen()));
              },
              icon: const Icon(AppIcons.notifications)
          ),

      actions: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Image.asset(
            "assets/images/auth/img.png",
          ),
        ),
        IconButton(
          onPressed: onMenuPressed ,
          icon: const Icon(AppIcons.menu),
        ),
      ],


    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
