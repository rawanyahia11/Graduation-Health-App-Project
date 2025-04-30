import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/core/constants/static_lists.dart';

import '../widgets/navigation_containers_widget.dart';
class FilteredReservationScreen extends StatefulWidget {
  const FilteredReservationScreen({super.key});

  @override
  State<FilteredReservationScreen> createState() => _FilteredReservationScreenState();
}

class _FilteredReservationScreenState extends State<FilteredReservationScreen> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      Container(
        height: 77,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppColors.lighterColor2.withOpacity(0.6),AppColors.whiteColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            )
        ),
        child: const Center(child: Text("حجوزاتك",style: TextStyle(fontSize: AppSize.fontSize24,color: AppColors.labelsInDrawerColor),)),
      ),

        const SizedBox(height: AppSize.sizedBoxHeight10),



        Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
                List.generate(
                    labelsOfNavigationContainers.length ,
                    (index) =>
                        NavigationContainer(
                            labelText: labelsOfNavigationContainers[index],
                            isSelected: selectedIndex == index ,
                            onTap: (){
                              setState(() {
                                selectedIndex = index ;
                              });
                            }
                        ),
                ),
            ),
        ),


        const SizedBox(height: AppSize.sizedBoxHeight10),


        listViewsInReservation[selectedIndex]

     ],
    );

  }
}
