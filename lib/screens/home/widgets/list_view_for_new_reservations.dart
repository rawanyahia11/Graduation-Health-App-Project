import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/screens/home/new_reservation/details/results/result_screen.dart';
import '../../../core/constants/colors.dart';
class ListViewForNewReservation extends StatelessWidget {

  final int itemCount ;
  final List<String> iconsList;
  final List<String> namesList;
  const ListViewForNewReservation({super.key, required this.itemCount, required this.iconsList, required this.namesList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(AppSize.paddingAll25),
        child: ListView.separated(
            itemBuilder: (context, index) => MaterialButton(
                minWidth: double.infinity,
                height: 73,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ResultScreen() ));

                },
                color: AppColors.lighterColor,
                elevation: 4 ,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.radius8),
                    side: BorderSide(color: AppColors.lighterColor2,width: AppSize.width1)
                ),

                child: ListTile(
                  title: Text(
                      namesList[index],
                    style: const TextStyle(color: AppColors.darkBlueColor,fontSize: AppSize.fontSize22),
                  ),
                  
                  leading: Image.asset(
                    iconsList[index],
                    width: 30,
                    height: 30,
                  ),
                )

            ),
            separatorBuilder: (context, index) => const SizedBox(height: AppSize.sizedBoxHeight15,) ,
            itemCount: itemCount
        ),
      ),
    );
  }
}
