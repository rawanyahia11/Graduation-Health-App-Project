import 'package:flutter/material.dart';
import '../../core/constants/app_icons.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/sizes.dart';
class MainColorAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String titleText ;

  const MainColorAppBar({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.mainColor,
      foregroundColor: AppColors.whiteColor,

      leading:Padding(
        padding: const EdgeInsets.only(right: 5),
        child: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:const Icon(AppIcons.arrow2)
        ),
      ),
      leadingWidth: 30,
      title: Row(
        children: [
          SizedBox(
              width: 25,
              height: 30,
              child: Image.asset("assets/images/splash/img_1.png")
          ),

          const SizedBox(width: 10,),

          Text( titleText , style: const TextStyle(fontSize: AppSize.fontSize20),)

        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
