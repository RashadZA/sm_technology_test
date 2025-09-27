import 'dart:async';
import 'package:sm_technology_test/core/components/widgets/success_popup_widget.dart';
import 'package:sm_technology_test/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';

class VerifyCodeScreenController extends GetxController {
  final TextEditingController verifyCodeFieldTextEditController = TextEditingController();

  RxString currentText = ''.obs;
  RxBool isLoading = false.obs;
  RxBool successPopupContinueButtonIsTapped = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {}

  void onPinChanged(String value) {
    currentText.value = value;
    // No need to manually update controller with Pinput
  }

  Future<void> verifyCode(String code) async {
    if (code.length != 4) return;

    isLoading.value = true;
    update();

    // Simulate API call delay
    await Future.delayed(Duration(seconds: 2));

    isLoading.value = false;
    update();

    if (code.isNotEmpty) { // Replace with your actual verification logic
      Get.dialog(
        barrierDismissible: false,
        Dialog(
          elevation: 5,
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          child: Obx(()=>SuccessPopupWidget(
            hideCloseIcon: true,
            titleMassage: "Success",
            subMassage: "Your password is successfully created",
            iconPath: AppImages.verifyCodeSuccessIcon,
            popUpHeight: 350,
            iconWidth: 135,
            iconHeight: 135,
            isLoading: successPopupContinueButtonIsTapped.value,
            successPopupContinueButtonOnPressedMethod: () => Get.offAllNamed(Routes.signInScreen),
          ),
          ),
        ),
      );
    } else {
      "Invalid code. Please try again.".errorSnackBar();
      // Clear the pin input on error
      verifyCodeFieldTextEditController.clear();
      currentText.value = '';
    }
  }

  void resendCode() {
    verifyCodeFieldTextEditController.clear();
    currentText.value = '';

    "New verification code has been sent!".infoSnackBar();
  }

  Future<void> signInOnPressedMethod() async {
    Get.offNamed(Routes.signInScreen);
  }

  @override
  void onClose() {
    verifyCodeFieldTextEditController.dispose();
    super.onClose();
  }
}