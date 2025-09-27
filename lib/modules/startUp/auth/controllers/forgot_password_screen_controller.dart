import 'dart:async';
import 'package:sm_technology_test/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';


class ForgotPasswordScreenController extends GetxController {

  final GlobalKey<FormState> fromStateKey = GlobalKey<FormState>();


  final TextEditingController emailTextEditController = TextEditingController(text: "a@gmail.com");

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {}


  /// Continue button on pressed method
  Future<void> continueButtonOnPressedMethod() async {
    if(!fromStateKey.currentState!.validate()){
      "Please fill up required filled".infoSnackBar();
    } else {
      Get.offNamed(Routes.newPasswordScreen);
    }
  }

  Future<void> close() async {}

  @override
  void onClose() {
    close();
    super.onClose();
  }

}