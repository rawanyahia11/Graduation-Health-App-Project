import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/core/constants/strings.dart';
import 'package:graduation_health_app_project/screens/auth/login/login_screen.dart';
import 'package:graduation_health_app_project/screens/auth/register/register_screen.dart';
import 'package:graduation_health_app_project/screens/auth/widgets/material_button_widget.dart';
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.asset(
              "assets/images/auth/img.png",
              width: 166,
              height: 173,
            ),

            const SizedBox(height: AppSize.sizedBoxHeight50),

            const Text(
              "تأكد من التعافي السريع من خلال تعليمات الرعاية الصحية",
              style: TextStyle(fontSize: AppSize.fontSize20,fontWeight: FontWeight.w400,color:AppColors.mainColor),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: AppSize.sizedBoxHeight75),

            MaterialButtonWidgetInAuth(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const RegisterScreen()));
                },
                color: AppColors.mainColor,
                textColor: AppColors.whiteColor,
                text: "إنشاء حساب"
            ),

            const SizedBox(height: AppSize.sizedBoxHeight25),

            MaterialButtonWidgetInAuth(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                },
                color: AppColors.whiteColor,
                textColor: AppColors.mainColor,
                text: AppStrings.login
            ),

          ],
        ),
      ),
    );
  }
}
