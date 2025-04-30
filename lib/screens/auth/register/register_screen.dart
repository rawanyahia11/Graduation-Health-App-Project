import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/app_icons.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/core/constants/strings.dart';
import 'package:graduation_health_app_project/screens/auth/register/survey/survey_screen1.dart';
import 'package:graduation_health_app_project/screens/auth/widgets/clip_oval_widget.dart';
import 'package:graduation_health_app_project/screens/auth/widgets/text_form_field_widget.dart';

import '../login/login_screen.dart';
import '../widgets/material_button_widget.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool secureText1 = true ;
  bool secureText2 = true ;

  final name1Controller = TextEditingController();
  final name2Controller = TextEditingController();
  final idController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final reEnteringPasswordController = TextEditingController();

  String? selectedAnswer;

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

                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    "assets/images/auth/img.png",
                    width: 57,
                    height: 53,
                  ),
                ),

                const Text(
                  "تسجيل حساب جديد",
                  style: TextStyle(fontSize: AppSize.fontSize24,fontWeight: AppSize.lowBold,color:AppColors.mainColor),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: AppSize.sizedBoxHeight30),

                TextFormFieldWidget(
                    hintText: "أكتب إسمك الأول",
                    icon: Image.asset("assets/icons/auth/img.png"),
                    controller: name1Controller
                ),

                const SizedBox(height: AppSize.sizedBoxHeight10),

                TextFormFieldWidget(
                    hintText: "أكتب إسم الأب بالكامل",
                    icon: Image.asset("assets/icons/auth/img.png"),
                    controller: name2Controller
                ),

                const SizedBox(height: AppSize.sizedBoxHeight10),

                TextFormFieldWidget(
                    hintText: "أكتب الرقم القومي",
                    icon: Image.asset("assets/icons/auth/img_1.png"),
                    controller: idController
                ),

                const SizedBox(height: AppSize.sizedBoxHeight10),

                TextFormFieldWidget(
                    hintText: "أكتب الإيميل",
                    icon: Image.asset("assets/icons/auth/img_2.png"),
                    controller: emailController
                ),

                const SizedBox(height: AppSize.sizedBoxHeight10),

                TextFormFieldWidget(
                    hintText: "أكتب الباسورد",
                    icon: Image.asset("assets/icons/auth/img_3.png"),
                    controller: passwordController,
                    suffixIcon: IconButton(
                        onPressed: (){
                          secureText1 =! secureText1 ;
                          setState(() { });
                        },
                        icon: secureText1?
                        Icon(AppIcons.noShowPassword , color: AppColors.eyeIconColor):
                        const Icon(AppIcons.showPassword, color: AppColors.mainColor)

                    ),
                ),

                const SizedBox(height: AppSize.sizedBoxHeight10),

                TextFormFieldWidget(
                    hintText:  "أكتب تأكيد الباسورد",
                    icon: Image.asset("assets/icons/auth/img_3.png"),
                    controller: reEnteringPasswordController,
                    suffixIcon: IconButton(
                        onPressed: (){
                          secureText2 =! secureText2 ;
                          setState(() { });
                        },
                        icon: secureText2?
                        Icon(AppIcons.noShowPassword , color: AppColors.eyeIconColor):
                        const Icon(AppIcons.showPassword, color: AppColors.mainColor)
                    ),
                ),

                const SizedBox(height: AppSize.sizedBoxHeight20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/auth/img_4.png",width: AppSize.width24,height: AppSize.height31,),

                    const SizedBox(width: AppSize.sizedBoxWidth15),

                    ClipOvalWidget(
                      color: selectedAnswer == "boy" ? AppColors.mainColor : AppColors.whiteColor,
                      onTab: (){
                        setState(() {
                          selectedAnswer = "boy";
                        });
                      },
                    ),

                    const SizedBox(width: 50),

                    ClipOvalWidget(
                      color: selectedAnswer == "girl" ? AppColors.mainColor : AppColors.whiteColor,
                      onTab: (){
                        setState(() {
                          selectedAnswer = "girl";
                        });
                      },
                    ),

                    const SizedBox(width: AppSize.sizedBoxWidth15),

                    Image.asset("assets/icons/auth/img_5.png",width: AppSize.width24,height: AppSize.height31),

                  ],
                ),

                const SizedBox(height: AppSize.sizedBoxHeight25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      " عند تسجيل الحساب أنت توافق على ",
                      style: TextStyle(
                          fontSize: AppSize.fontSize14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffA4A4A4)
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: const Text(
                        "سياسة الخصوصية",
                        style: TextStyle(
                          fontSize: AppSize.fontSize16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.mainColor,
                          decoration: TextDecoration.underline,
                          decorationColor:AppColors.mainColor,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: AppSize.sizedBoxHeight25),

                MaterialButtonWidgetInAuth(
                  padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal80),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SurveyScreen1()));
                    },
                    color: AppColors.mainColor,
                    textColor: AppColors.whiteColor,
                    text: AppStrings.register
                ),

                const SizedBox(height: AppSize.sizedBoxHeight25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      " لديك حساب بالفعل؟ ",
                      style: TextStyle(
                        fontSize: AppSize.fontSize16,
                        fontWeight: AppSize.extraBold,
                        color: AppColors.lightBlueColor,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                      },
                      child: const Text(
                        AppStrings.login,
                        style: TextStyle(
                          fontSize:  AppSize.fontSize18,
                          fontWeight: AppSize.extraBold,
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
