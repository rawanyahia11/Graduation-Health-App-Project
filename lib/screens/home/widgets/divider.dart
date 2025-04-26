import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class DividerInDrawer extends StatelessWidget {
  const DividerInDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(thickness: AppSize.thickness1_1, color: AppColors.darkColor.withOpacity(0.1),endIndent: AppSize.startAndEndOfDivider, indent: AppSize.startAndEndOfDivider,);
  }
}
