import 'package:sm_technology_test/core/components/widgets/buttons/custom_text_button.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:sm_technology_test/modules/startUp/onboarding/controller/on_boarding_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends GetWidget<OnBoardingScreenController> {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context, orientation) {
        return Obx(()=> Scaffold(
          body: SizedBox(
            width: Get.width,
            height: Get.height,
            child: ListView(
              children: [
                SizedBox(
                  width: Get.width,
                  height: 650,
                  child: PageView.builder(
                    controller: controller.pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.screens.length,
                    onPageChanged: (index) {
                      controller.currentScreenIndex.value = index;
                    },
                    itemBuilder: (context, index) {
                      return controller.screens[index];
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      controller.screens.length, (index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 8,
                      width: controller.currentScreenIndex.value == index ? 24 : 8,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: controller.currentScreenIndex.value == index
                            ? primaryColor
                            : primaryColor.withValues(alpha: 0.5),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 30,),
                CustomTextButton(
                  width: 320,
                  height: 50,
                  borderRadius: 25,
                  onPressed: ()=> controller.buttonOnPressedMethod(),
                  buttonText: controller.currentScreenIndex.value == 0 ? "Next" : "Get Start",
                  buttonColor: primaryColor,
                  buttonTextStyle: AppTextTheme.text18.copyWith(
                    color: whiteColor,
                  ),
                  isButtonIsTapped: false,
                ),
              ],
            ),
          ),
        ),
        );
      }
    );
  }
}

