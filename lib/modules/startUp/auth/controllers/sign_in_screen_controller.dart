import 'package:sm_technology_test/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreenController extends GetxController{
  final TextEditingController nameTextEditController = TextEditingController();
  final TextEditingController emailTextEditController = TextEditingController();
  final TextEditingController passwordTextEditController = TextEditingController();

  RxBool obscureTextStatus = true.obs;
  RxBool rememberMeStatus = true.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {}

  /// Sign In  button on pressed method
  Future<void> signInOnPressedMethod() async {
    Get.offNamed(Routes.mainScreen);
  }

  /// Create account  button on pressed method
  Future<void> createAccountOnPressedMethod() async {
    Get.offNamed(Routes.signUpScreen);
  }

  Future<void> passwordFieldObscureStatusChangeMethod() async {
    obscureTextStatus.value = !obscureTextStatus.value;
    update();
  }

  Future<void> rememberMeStatusChangeMethod() async {
    rememberMeStatus.value = !rememberMeStatus.value;
    update();
  }
  /// "Forgot your password?" Text button on pressed method
  Future<void> forgotPasswordOnPressedMethod() async {
    Get.toNamed(Routes.forgotScreen);
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }
}