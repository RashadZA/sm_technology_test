import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreenFirstWidget extends StatelessWidget {
  const OnBoardingScreenFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 650,
      padding: EdgeInsets.only(left: 15,right: 15,top: 100,bottom: 40),
      child: Column(
        children: [
          Image.asset(AppImages.onboardingImageOne, width: 320,height: 320,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 15),
            child: Text(
              "Best online courses in the world",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: AppTextTheme.text24.copyWith(
                  overflow: TextOverflow.visible,
                  fontWeight: FontWeight.w700
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 0),
            child: RichText(
              textAlign: TextAlign.center,
              maxLines: 3,
              text: TextSpan(
                text: "Now you can learn anywhere, anytime, even if there is no internet access!",
                style: AppTextTheme.text14.copyWith(
                    color: secondaryTextColor,
                    overflow: TextOverflow.visible,
                    fontWeight: FontWeight.w400
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}