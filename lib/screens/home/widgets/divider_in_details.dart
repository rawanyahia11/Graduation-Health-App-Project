import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class DividerInDetails extends StatelessWidget {
  const DividerInDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(thickness: AppSize.thickness1_1, color: AppColors.dividerColor,endIndent: 50, indent: 50,height: 5,);
  }
}
