import 'package:flutter/material.dart';
import '../../../../../../core/constants/colors.dart';
import '../../../../../../core/constants/sizes.dart';
import '../../../../../../layout/app_bar/white_app_bar.dart';
import '../../../../widgets/drawer.dart';
import '../../../../widgets/material_button_in_lab_rays_screen.dart';
import 'lab_details/test.dart';
class LabScreen extends StatelessWidget {
  LabScreen({super.key});

  final GlobalKey <ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        key: scaffoldKey,
        backgroundColor: AppColors.whiteColor,
        appBar: WhiteAppBar(
          showBackButton: true,
          onMenuPressed: (){
            scaffoldKey.currentState?.openEndDrawer();
          },
        ),

        endDrawer: TheDrawer(name: "محمد أحمد", id: "30312011623222", profilePhoto: Image.asset("assets/images/profile/profile_photo/img.png"),),

        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(AppSize.paddingAll15),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "معمل",
                      style: TextStyle(
                        fontSize:AppSize.fontSize20,
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
                  ),


                  Text(
                    "المعمل العام الأول",
                    style: TextStyle(
                      fontSize:AppSize.fontSize30,
                      color: AppColors.labelsInDrawerColor,
                      shadows: [
                        Shadow(
                          offset: const Offset(2,2),
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.5), // ظل خفيف
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: AppSize.sizedBoxHeight50,),

                  Expanded(
                    child: Center(
                      child: ListView.separated(
                        padding: const EdgeInsets.all(AppSize.paddingAll10),
                          itemBuilder: (context,index) => MaterialButtonInLabRaysScreen(

                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const TestScreen()));
                            },
                            text: "Complete Blood Count (CBC)",
                            textSize: 15 ,
                            image: Image.asset("assets/images/general_photos/lab/img.png"),
                          ),
                          separatorBuilder: (context,index) => const SizedBox(height: AppSize.sizedBoxHeight50,) ,
                          itemCount: 3
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ),
        )
    );
  }
}
