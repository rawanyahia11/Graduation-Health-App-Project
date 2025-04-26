import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/strings.dart';
import '../../../core/constants/app_icons.dart';
import '../../../core/constants/sizes.dart';
import '../../home/main_view/main_view_screen.dart';
import '../register/register_screen.dart';
import '../widgets/material_button_widget.dart';
import '../widgets/text_form_field_widget.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool secureText = true ;

  final idController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(AppSize.paddingAll20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image.asset(
                  "assets/images/auth/img.png",
                  width: 133,
                  height: 138,
                ),

                const Text(
                  AppStrings.login,
                  style: TextStyle(fontSize: AppSize.fontSize24, fontWeight: AppSize.lowBold, color:AppColors.mainColor),
                  textAlign: TextAlign.center,

                ),

                const SizedBox(height: AppSize.sizedBoxHeight75,),

                TextFormFieldWidget(
                    hintText: "أكتب الرقم القومي",
                    icon: Image.asset("assets/icons/auth/img_1.png"),
                    controller: idController
                ),

                const SizedBox(height: AppSize.sizedBoxHeight10),

                TextFormFieldWidget(
                  hintText: "أكتب الباسورد",
                  icon: Image.asset("assets/icons/auth/img_3.png"),
                  controller: passwordController,
                  suffixIcon: IconButton(
                      onPressed: (){
                        secureText =! secureText ;
                        setState(() { });
                      },
                      icon: secureText?
                      Icon(AppIcons.noShowPassword , color: AppColors.eyeIconColor):
                      const Icon(AppIcons.showPassword, color: AppColors.mainColor)
                  ),
                ),

                const SizedBox(height: 10,),

                const Text(
                  "نسيت كلمة المرور ؟",
                  style: TextStyle(
                    fontSize: AppSize.fontSize16,
                    fontWeight: AppSize.extraBold,
                    color: AppColors.lightBlueColor,
                  ),
                ),

                const SizedBox(height: AppSize.sizedBoxHeight30,),

                MaterialButtonWidgetInAuth(
                    padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal80),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const MainViewScreen()));
                    },
                    color: AppColors.mainColor,
                    textColor: AppColors.whiteColor,
                    text: AppStrings.login
                ),

                const SizedBox(height: AppSize.sizedBoxHeight15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "ليس لديك حساب؟ ",
                      style: TextStyle(
                        fontSize: AppSize.fontSize16,
                        fontWeight:AppSize.extraBold,
                        color: AppColors.lightBlueColor,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const RegisterScreen()));
                      },
                      child: const Text(
                        "تسجيل حساب",
                        style: TextStyle(
                          fontSize: AppSize.fontSize18,
                          fontWeight: FontWeight.w800,
                          color: AppColors.mainColor,
                        ),

                      ),
                    ),
                  ],
                ),

              ],
            ),

          ),
        ),
      ),
    );
  }
}
