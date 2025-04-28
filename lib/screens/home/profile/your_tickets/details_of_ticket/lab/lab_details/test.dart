import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/screens/home/widgets/container_in_details.dart';
import 'package:graduation_health_app_project/screens/home/widgets/divider_in_details.dart';

import '../../../../../../../layout/app_bar/main_color_app_bar.dart';
import '../../../../../widgets/data_list_view_in_details.dart';
class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: const MainColorAppBar(
          titleText: "تفاصيل"
      ),

      body: ContainerInDetails(
        text: 'Complete Blood Count (CBC)',
        labelSize: AppSize.fontSize18,
        image: Image.asset("assets/images/general_photos/lab/img.png"),
        theData: Padding(
            padding: const EdgeInsets.all(AppSize.paddingAll15),
            child: Column(
              children: [

                Text(
                  "النتيجة",
                  style: TextStyle(
                    fontSize:AppSize.fontSize24,
                    color: AppColors.labelsInDrawerColor,
                    shadows: [
                      Shadow(
                        offset: const Offset(2,2),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.2), // ظل خفيف
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: AppSize.sizedBoxHeight20),

                const DataListViewInDetails(
                  padding: EdgeInsets.only(right: 15),
                  separatedItem: DividerInDetails(),
                  itemsCount: 10 ,
                  namesOfItems: "Complete Blood Count",
                )

              ],
            )
        ),
      ) ,
    );
  }
}