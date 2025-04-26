import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class TextFormFieldWidget extends StatelessWidget{

  final String hintText ;
  final Widget icon ;
  final TextEditingController controller ;
  final Widget? suffixIcon;


  const TextFormFieldWidget({super.key, required this.hintText, required this.icon, required this.controller, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: AppSize.fontSize14, color: AppColors.hintTextColor),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.radius16),
              borderSide: const BorderSide(
                color: AppColors.borderSideColor,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.radius16),
              borderSide: const BorderSide(
                color: AppColors.borderSideColor,
              )
          ),

          prefixIcon: Container(
              padding: const EdgeInsets.only(left: 9),
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: AppColors.mainColor,
                    width: AppSize.width1,
                  ),
                ),
              ),
              child: SizedBox(
                width: AppSize.width24,
                height: AppSize.height24,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: icon,
                ),
              ),

              //Image.asset(icon , width: AppSize.width24, height: AppSize.height24,)
          ),

          suffixIcon: suffixIcon
        ),
      ),
    );

  }

}