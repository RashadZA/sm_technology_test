import 'dart:async';
import 'package:sm_technology_test/core/components/dataModels/password_strength_data_class.dart';
import 'package:sm_technology_test/core/components/widgets/success_popup_widget.dart';
import 'package:sm_technology_test/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';


class SignUpScreenController extends GetxController {

  final GlobalKey<FormState> fromStateKey = GlobalKey<FormState>();

  final TextEditingController nameTextEditController = TextEditingController();
  final TextEditingController emailTextEditController = TextEditingController();
  final TextEditingController passwordTextEditController = TextEditingController();

  RxBool obscureTextStatus = true.obs;
  RxBool successPopupContinueButtonIsTapped = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {}

  /// Sign Out  button on pressed method
  Future<void> signUpOnPressedMethod() async {
    if(!fromStateKey.currentState!.validate()){
      "Please fill up required filled".infoSnackBar();
    } else {
      Get.dialog(
        barrierDismissible: false,
        Dialog(
          elevation: 5,
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          child: Obx(()=>SuccessPopupWidget(
            isLoading: successPopupContinueButtonIsTapped.value,
            successPopupClosedIconOnPressedMethod: () => Get.offAllNamed(Routes.signInScreen),
            successPopupContinueButtonOnPressedMethod: () => Get.offAllNamed(Routes.signInScreen),
          ),
          ),
        ),
      );
    }
  }


  /// "Already have an account" Text button on pressed method
  Future<void> alreadyHaveAnAccountOnPressedMethod() async {
    Get.offNamed(Routes.signInScreen);
  }

  Future<void> passwordFieldObscureStatusChangeMethod() async {
    obscureTextStatus.value = !obscureTextStatus.value;
    update();
  }

  /// Password Strength Model
  PasswordStrength getPasswordStrength() {
    final password = passwordTextEditController.text;

    if (password.isEmpty) {
      return PasswordStrength('Weak', Colors.red, 0.3);
    }

    int strength = 0;
    if (password.length >= 8) strength += 1;
    if (RegExp(r'[A-Z]').hasMatch(password)) strength += 1;
    if (RegExp(r'[a-z]').hasMatch(password)) strength += 1;
    if (RegExp(r'[0-9]').hasMatch(password)) strength += 1;
    if (RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password)) strength += 1;
    update();
    if (strength <= 2) {
      return PasswordStrength('Weak', Colors.red, 0.3);
    } else if (strength <= 3) {
      return PasswordStrength('Fair', Colors.orange, 0.6);
    } else {
      return PasswordStrength('Strong', Colors.green, 1.0);
    }
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}