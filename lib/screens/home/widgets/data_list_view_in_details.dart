import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class DataListViewInDetails extends StatelessWidget {

  final Widget separatedItem;
  final int itemsCount ;
  final String? amountOfItem ;
  final String namesOfItems ;
  final EdgeInsetsGeometry padding;

  const DataListViewInDetails({super.key, required this.separatedItem, required this.itemsCount, required this.namesOfItems, this.amountOfItem, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: padding ,
          itemBuilder: (context, index) => Directionality(
            textDirection: TextDirection.ltr,
            child: Row(
              children: [
                const Text(".", style: TextStyle(fontSize: AppSize.fontSize30,  height:2),) ,    //height: 1,  عشان تبقى في النص

                const SizedBox(width: AppSize.sizedBoxWidth5,),

                Text(
                  namesOfItems,
                  style: const TextStyle(fontSize: AppSize.fontSize16, fontWeight: AppSize.bold, color: AppColors.darkColor),
                ),

                const Spacer(),

                Text(
                  amountOfItem ?? '',
                  style: const TextStyle(fontSize: AppSize.fontSize18, fontWeight: AppSize.bold, color: AppColors.darkColor),
                ),


              ],
            ),
          ),
          separatorBuilder: (context, index) => separatedItem,
          itemCount: itemsCount
      ),
    );
  }
}
