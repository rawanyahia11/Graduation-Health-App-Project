import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class MaterialButtonWidgetInAuth extends StatelessWidget {

  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final String text;
  final EdgeInsetsGeometry? padding ;


  const MaterialButtonWidgetInAuth({super.key, required this.onPressed, required this.color, required this.textColor, required this.text, this.padding});

  @override
  Widget build(BuildContext context) {
   return Container(
     padding: padding,
       child: MaterialButton(
         height: 49.38,
         onPressed: onPressed ,
         color: color,
         textColor: textColor,
         minWidth: double.infinity ,
         elevation: 7,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10),
         ),
         child: Text(
           text,
           style: const TextStyle(fontSize: AppSize.fontSize20, fontWeight: FontWeight.w200),
         ),
       )
   );
  }

}