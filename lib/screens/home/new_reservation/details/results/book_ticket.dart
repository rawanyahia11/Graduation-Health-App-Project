import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/layout/app_bar/main_color_app_bar.dart';
import 'package:graduation_health_app_project/screens/auth/widgets/material_button_in_survey.dart';
import 'package:graduation_health_app_project/screens/home/widgets/masked_text_input_formatter.dart';
class BookTicket extends StatelessWidget {
   BookTicket({super.key});

  final dateController = TextEditingController();
  final timeController = TextEditingController();
  final durationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainColorAppBar(titleText: "حجز تذكرة"),

      body: Padding(
        padding: const EdgeInsets.all(AppSize.paddingAll35),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(AppSize.paddingAll15),
            height: 612,
            width: double.infinity,
            decoration: BoxDecoration(
                color:AppColors.lighterColor2,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: AppColors.mainColor,width: 1 )

            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingHorizontal10, vertical: AppSize.paddingVertical10),
              child: Column(
                children: [

                  Row(
                    children: [

                      Container(
                        width: 70,
                        height: 70,
                        padding: const EdgeInsets.all(AppSize.paddingAll10),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2,color: AppColors.sideOfContainerPhotoColor),
                            boxShadow: const [
                              BoxShadow(
                                  color: AppColors.whiteColor,
                                  spreadRadius: 1,
                                  blurRadius: 2
                              ),
                            ],
                            shape: BoxShape.circle
                        ),
                        child: Image.asset("assets/images/auth/img.png"),

                      ),

                      const SizedBox(width: AppSize.sizedBoxWidth30),

                      Text(
                        "مستشفى الشاطبي",
                        style: TextStyle(
                            color: AppColors.darkBlueColor,
                            fontSize: AppSize.fontSize22,
                            fontWeight: AppSize.bold,
                            shadows: [
                              Shadow(
                                offset: const Offset(1.5,1.5),
                                blurRadius: 6,
                                color: Colors.black.withOpacity(0.3), // ظل خفيف
                              ),
                            ],
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: AppSize.sizedBoxHeight10 ,),
                  
                  Row(
                    children: [
                      Text(
                          "دكتور / أمجد حسين",
                        style: TextStyle(
                          color: AppColors.darkBlueColor,
                          fontSize: AppSize.fontSize16,
                          shadows: [
                            Shadow(
                              offset: const Offset(1.5,1.5),
                              blurRadius: 6,
                              color: Colors.black.withOpacity(0.3), // ظل خفيف
                            ),
                          ],
                        ),

                      ),

                      const Spacer(),

                      const Text(
                        "عيادة - الجلدية",
                        style: TextStyle(color: AppColors.darkBlueColor,fontSize: AppSize.fontSize18, fontWeight: AppSize.bold),
                      )
                    ],
                  ),

                  const SizedBox(height: AppSize.sizedBoxHeight10 ,),

                  Row(
                    children: [
                      ClipOval(
                        child: Container(
                          width: 14,
                          height: 14,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                          ),
                        ),
                      ),

                      const SizedBox(width: AppSize.sizedBoxWidth15),

                      RichText(
                          text: const TextSpan(
                              children: [

                                TextSpan(
                                    text: "متاح من  ",
                                    style: TextStyle(fontSize: AppSize.fontSize14,color: AppColors.dateAndTimeColor)
                                ),

                                TextSpan(
                                    text: "13:00  ",
                                    style: TextStyle(fontSize: AppSize.fontSize14,color: AppColors.dateAndTimeColor)
                                ),

                                TextSpan(
                                    text: "إلى  ",
                                    style: TextStyle(fontSize: AppSize.fontSize14,color: AppColors.dateAndTimeColor)
                                ),

                                TextSpan(
                                    text: "17:00",
                                    style: TextStyle(fontSize: AppSize.fontSize14,color: AppColors.dateAndTimeColor)
                                ),

                              ]
                          )
                      )
                    ],
                  ),

                  const SizedBox(height: AppSize.sizedBoxHeight15 ,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      const Text(
                        "رقم الجحز ",
                        style: TextStyle(color: AppColors.darkBlueColor,fontSize: AppSize.fontSize22, fontWeight: AppSize.bold),
                      ),
                      Text(
                        "10",
                        style: TextStyle(
                          fontSize: 35,
                          color: AppColors.redColorInBookScreen,
                          fontWeight: AppSize.bold,
                          shadows: [
                            Shadow(
                              offset: const Offset(1.5,1.5),
                              blurRadius: 6,
                              color: Colors.black.withOpacity(0.3), // ظل خفيف
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),

                  const SizedBox(height: AppSize.sizedBoxHeight10),

                  Row(
                    children: [
                      Column(
                        children: [
                          const Text(
                            "التاريخ",
                            style: TextStyle(color: AppColors.darkBlueColor,fontSize: AppSize.fontSize20, fontWeight: AppSize.bold),
                          ),

                          const SizedBox(height: AppSize.sizedBoxHeight5),

                          MaskedTextInputFormatter(
                              controller: dateController ,
                              theFormatters: [
                                MaskedInputFormatter('##/##/####'),
                              ],
                              hintText: "dd/mm/yyyy",
                            textFieldWidth: 140,
                          )
                        ],
                      ),

                      const SizedBox(width: AppSize.sizedBoxWidth50),

                      Column(
                        children: [
                          const Text(
                            "الوقت",
                            style: TextStyle(color: AppColors.darkBlueColor,fontSize: AppSize.fontSize20, fontWeight: AppSize.bold),
                          ),

                          const SizedBox(height: AppSize.sizedBoxHeight5),

                          MaskedTextInputFormatter(
                              controller: timeController ,
                              theFormatters: [
                                MaskedInputFormatter('##:##'),
                              ],
                              hintText: "hh:mm",
                            textFieldWidth: 80,
                          )
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: AppSize.sizedBoxHeight10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "المدة المتوقعة للكشف",
                            style: TextStyle(color: AppColors.darkBlueColor,fontSize: AppSize.fontSize18, fontWeight: AppSize.bold),
                          ),

                          const SizedBox(height: AppSize.sizedBoxHeight5),

                          MaskedTextInputFormatter(
                            controller: durationController ,
                            theFormatters: [
                              MaskedInputFormatter('##:##:##'),
                            ],
                            hintText: "hh:mm:ss",
                            textFieldWidth: 120,
                          )
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: AppSize.sizedBoxHeight10),

                  Row(
                    children: [
                      const Text(
                        "العنوان",
                        style: TextStyle(
                          color: AppColors.darkBlueColor,
                          fontSize: AppSize.fontSize16,
                        ),
                      ),

                      Icon(Icons.location_on_outlined,color: AppColors.locationAndEditIconColor.withOpacity(0.8),size: 20,)

                    ],
                  ),

                  Text(
                    "شارع بورسعيد - الاسكندريه - مصر",
                    style: TextStyle(
                      fontSize:AppSize.fontSize18,
                      color: AppColors.darkBlueColor,
                      fontWeight: AppSize.bold,
                      shadows: [
                        Shadow(
                          offset: const Offset(2,2),
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.2), // ظل خفيف
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: AppSize.sizedBoxHeight20,),

                  SizedBox(
                    height: 40,
                    child: MaterialButtonInSurvey(
                        onPressed: (){

                        },
                        text: "حجز",
                        textColor: AppColors.whiteColor,
                        fillColor: AppColors.mainColor
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
