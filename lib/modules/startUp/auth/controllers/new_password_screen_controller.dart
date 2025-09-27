import 'package:sm_technology_test/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';

class NewPasswordScreenController extends GetxController{

  final GlobalKey<FormState> fromStateKey = GlobalKey<FormState>();

  final TextEditingController passwordTextEditController = TextEditingController();
  final TextEditingController confirmPasswordTextEditController = TextEditingController();

  RxBool passwordObscureTextStatus = true.obs;
  RxBool confirmPasswordObscureTextStatus = true.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {}

  Future<void> passwordFieldObscureStatusChangeMethod() async {
    passwordObscureTextStatus.value = !passwordObscureTextStatus.value;
    update();
  }

  Future<void> confirmPasswordFieldObscureStatusChangeMethod() async {
    confirmPasswordObscureTextStatus.value = !confirmPasswordObscureTextStatus.value;
    update();
  }

  /// Create New Password button on pressed method
  Future<void> createNewPasswordOnPressedMethod() async {
    if(!fromStateKey.currentState!.validate()){
      "Please fill up required filled".infoSnackBar();
    } else if(passwordTextEditController.text != confirmPasswordTextEditController.text){
      "New and confirm password should be same".infoSnackBar();
    } else {
      Get.offAllNamed(Routes.verifyCodeScreen);
    }
  }

  /// Sign In  button on pressed method
  Future<void> signInOnPressedMethod() async {
    Get.offNamed(Routes.signInScreen);
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }
}