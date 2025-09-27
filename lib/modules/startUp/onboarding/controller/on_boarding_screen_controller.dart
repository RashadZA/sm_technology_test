import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:sm_technology_test/modules/startUp/onboarding/view/widgets/on_boarding_screen_first_widget.dart';
import 'package:sm_technology_test/modules/startUp/onboarding/view/widgets/on_boarding_screen_second_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreenController extends GetxController{

  final PageController pageController = PageController();

  RxInt currentScreenIndex = 0.obs;

  RxBool screenDataProcessing = false.obs;
  RxBool signInTextHoverStatus  = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    // screenDataProcessing.value = true;
    // await preloadImages();
    // screenDataProcessing.value = false;
  }

  final List<Widget> screens = [
    OnBoardingScreenFirstWidget(),
    OnBoardingScreenSecondWidget(),
  ];

  void buttonOnPressedMethod() {
    if (currentScreenIndex.value == 0) {
      currentScreenIndex.value = 1;
      pageController.animateToPage(
        currentScreenIndex.value,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {

    }
    update();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

}