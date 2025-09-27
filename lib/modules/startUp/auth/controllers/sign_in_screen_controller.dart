import 'package:sm_technology_test/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';

class SignInScreenController extends GetxController{

  final GlobalKey<FormState> fromStateKey = GlobalKey<FormState>();

  final TextEditingController emailTextEditController = TextEditingController(text: "a@gmail.com");
  final TextEditingController passwordTextEditController = TextEditingController(text: "123456");

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
    if(!fromStateKey.currentState!.validate()){
      "Please fill up required filled".infoSnackBar();
    } else {
      Get.offNamed(Routes.locationAccessScreen);
    }
  }

  /// Create account  button on pressed method
  Future<void> createAccountOnPressedMethod() async {
    Get.toNamed(Routes.signUpScreen);
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