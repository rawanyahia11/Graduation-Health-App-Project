import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class MaskedTextInputFormatter extends StatelessWidget {

  final TextEditingController controller ;
  final List<TextInputFormatter> theFormatters ;
  final String hintText ;
  final double textFieldWidth ;

  const MaskedTextInputFormatter({super.key, required this.controller, required this.theFormatters, required this.hintText, required this.textFieldWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: textFieldWidth,
      height: 40,
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.datetime,
        inputFormatters: theFormatters,
        cursorHeight: 20,
        cursorWidth: 1,
        cursorColor: AppColors.dateAndTimeColor,
        decoration: InputDecoration(
          fillColor: AppColors.whiteColor,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(letterSpacing: 2 , color: AppColors.dateAndTimeColor.withOpacity(0.5),),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.radius5),
            borderSide: BorderSide(color: AppColors.dateAndTimeColor.withOpacity(0.6)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.radius5),
            borderSide: BorderSide(color: AppColors.dateAndTimeColor.withOpacity(0.6)),
          ),
        ),
      ),
    );
  }
}
