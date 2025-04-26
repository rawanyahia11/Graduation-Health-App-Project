import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class ListTileInDrawer extends StatelessWidget {

  final String textLabel ;
  final IconData icon ;
  final VoidCallback onTap ;
  final Color iconsColor;

  const ListTileInDrawer({super.key, required this.textLabel, required this.icon, required this.onTap , this.iconsColor = AppColors.mainColor});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title:  Text(textLabel,style: const TextStyle(fontSize: AppSize.fontSize16, color: AppColors.labelsInDrawerColor),),
        leading: Icon(icon, color: iconsColor),
        onTap: onTap
    );
  }
}
