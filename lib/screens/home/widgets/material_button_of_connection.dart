import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
class MaterialButtonOfConnection extends StatelessWidget {

  final Widget icon ;
  const MaterialButtonOfConnection({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
        minWidth: 40,
        height: 40,
        onPressed: (){
        },
        color: AppColors.whiteColor ,
        textColor: AppColors.mainColor ,
        elevation: 2 ,
        //minWidth: double.infinity ,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),

        child: icon
    );
  }
}
