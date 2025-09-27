import 'dart:async';
import 'package:sm_technology_test/core/routes/app_pages.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> scaleAnimation;

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut,
      ),
    );
    animationController.forward();
    Timer(const Duration(seconds: 2), () {
      Get.offAllNamed(Routes.onBoardingScreen);
    });
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}