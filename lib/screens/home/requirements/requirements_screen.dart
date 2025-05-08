import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/strings.dart';
import 'package:graduation_health_app_project/layout/app_bar/white_app_bar.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/sizes.dart';
import '../../../core/constants/static_lists.dart';
import '../widgets/drawer.dart';
import '../widgets/navigation_containers_widget.dart';
class RequirementsScreen extends StatefulWidget {
  const RequirementsScreen({super.key});

  @override
  State<RequirementsScreen> createState() => _RequirementsScreenState();
}

class _RequirementsScreenState extends State<RequirementsScreen> {

  final GlobalKey <ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: WhiteAppBar(
          showBackButton: true,
          onMenuPressed:  (){
            scaffoldKey.currentState?.openEndDrawer();
          },
      ),

      endDrawer: TheDrawer(name: "محمد أحمد", id: "30312011623222", profilePhoto: Image.asset("assets/images/profile/profile_photo/img.png"),),

      body: Column(
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
            child: const Center(child: Text(AppStrings.requirements,style: TextStyle(fontSize: AppSize.fontSize20,color: AppColors.labelsInDrawerColor),)),
          ),

          const SizedBox(height: AppSize.sizedBoxHeight10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              List.generate(
                labelsOfNavigationContainersInRequirements.length ,
                    (index) =>
                    NavigationContainer(
                        labelText: labelsOfNavigationContainersInRequirements[index],
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

          listViewsInRequirements[selectedIndex]

        ],
      ),

    );
  }
}
