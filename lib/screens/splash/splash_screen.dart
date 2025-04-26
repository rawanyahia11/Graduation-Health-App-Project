import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/screens/auth/first_screen/first_screen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/splash/img.png",
              fit: BoxFit.cover,
            ),
          ),

          AnimatedSplashScreen(
            splash: Image.asset("assets/images/splash/img_1.png"),
            nextScreen: const FirstScreen() ,
            splashIconSize: 200,
            splashTransition: SplashTransition.fadeTransition,
            animationDuration: const Duration(seconds: 1 ),
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
