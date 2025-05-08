import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/sizes.dart';
import '../../../data/models/notifications_model.dart';
class CustomNotificationCard extends StatelessWidget {

  final NotificationsModel model;

  const CustomNotificationCard({super.key, required this.model,});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -65),

      child: Card (
        child: ListTile(
          leading: Stack(
            children: [

              Container(
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(7),
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

              if (model.isNew)
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: AppColors.redColorInNotifications,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1.5),
                    ),
                  ),
                ),
            ],
          ),

          title: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${model.title}\n",
                  style: const TextStyle(color: AppColors.darkBlueColor, fontSize: AppSize.fontSize18, fontWeight: AppSize.bold,),
                ),
                TextSpan(
                  text: model.doctorName,
                  style: const TextStyle(color: AppColors.mainColor, fontSize: AppSize.fontSize16),
                ),
                TextSpan(
                    text: "\n${model.specialty}",
                    style: const TextStyle(color: AppColors.darkColor, fontSize: AppSize.fontSize16),
                ),
              ],
            ),
          ),

          trailing: Text(
            model.date,
            style: const TextStyle(color: AppColors.dateAndTimeColor, fontSize: AppSize.fontSize12),
          ),
        ),
      ),
    );
  }
}
