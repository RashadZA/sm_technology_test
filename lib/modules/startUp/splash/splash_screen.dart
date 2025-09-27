import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:sm_technology_test/modules/startUp/splash/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetWidget<SplashScreenController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Get.height: ${Get.height}");
    return OrientationBuilder(
        builder: (context, orientation) {
        return Scaffold(
          backgroundColor: scaffoldBackgroundColor,
          body: Container(
            width: Get.width,
            height: Get.height,
            padding: EdgeInsets.all(20),
            child: Column(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedBuilder(
                  animation: controller.scaleAnimation,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: controller.scaleAnimation.value,
                      child: Image.asset("assets/icon.png", width: 150,height: 150,),
                    );
                  },
                ),
                Text(
                  "Theory test in my language",
                  textAlign: TextAlign.center,
                  style: AppTextTheme.text24.copyWith(
                    overflow: TextOverflow.visible,
                      fontWeight: FontWeight.w700
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "I must write the real test will be in English language and this app just helps you to understand the materials in you language",
                    style: AppTextTheme.text14.copyWith(
                        color: secondaryTextColor,
                        overflow: TextOverflow.visible,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                SizedBox(height: Get.height > 400 ? Get.height > 500 ? 100 : 15 : 0,),
                defaultLoaderOfCupertinoActivity()
              ],
            ),
          ),
        );
      }
    );
  }
}
