import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class NavigationContainer extends StatefulWidget {

  final String labelText ;
  final bool isSelected;
  final VoidCallback onTap;

  const NavigationContainer({super.key, required this.labelText, required this.isSelected, required this.onTap,});

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap ,
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 101,
        decoration: BoxDecoration(
          color: widget.isSelected ? AppColors.mainColor : AppColors.whiteColor ,
          border:Border(
            top : BorderSide(color: Colors.grey.withOpacity(0.5)),
            left : BorderSide(color: Colors.grey.withOpacity(0.5)),
            right : BorderSide(color: Colors.grey.withOpacity(0.5)),
          ),
          borderRadius: const BorderRadius.only(topRight:Radius.circular(AppSize.radius16),topLeft: Radius.circular(AppSize.radius16)),


        ),
        child: Text( widget.labelText ,style: TextStyle(color: widget.isSelected ? AppColors.whiteColor : AppColors.mainColor ,fontSize: AppSize.fontSize16),),
      ),
    );
  }
}
