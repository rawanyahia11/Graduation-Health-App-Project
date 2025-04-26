import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/app_images.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
import 'package:graduation_health_app_project/screens/home/widgets/material_button_in_new_reservation.dart';
class NewReservationScreen extends StatelessWidget {
  const NewReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(AppSize.paddingAll20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
              AppImages.newReservationPhoto,
              width: 320,
              height: 172,
            ),

            const SizedBox(height: AppSize.sizedBoxHeight50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButtonWidgetInNewReservation(
                    onPressed: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                    },
                    image: Image.asset("assets/images/home_photos/new_reservation_photos/img.png"),
                    text: "عيادات"
                ),

                const SizedBox(width: AppSize.sizedBoxWidth20,),

                MaterialButtonWidgetInNewReservation(
                    onPressed: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                    },
                    image: Image.asset("assets/images/home_photos/new_reservation_photos/img_1.png"),
                    text: "تحاليل"
                ),
              ],
            ),

            const SizedBox(height: AppSize.sizedBoxHeight20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButtonWidgetInNewReservation(
                    onPressed: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                    },
                    image: Image.asset("assets/images/home_photos/new_reservation_photos/img_2.png"),
                    text: "أشعة"
                ),
              ],
            ),



          ],
        ),
      ),
    );

  }
}
