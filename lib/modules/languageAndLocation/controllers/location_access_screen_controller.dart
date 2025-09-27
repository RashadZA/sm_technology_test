import 'dart:async';
import 'package:get/get.dart';
import 'package:sm_technology_test/core/routes/app_pages.dart';

class LocationAccessScreenController extends GetxController {

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {}

  Future<void> enableButtonOnPressedMethod() async {
    Get.toNamed(Routes.languageScreen);
  }

  Future<void> close() async {}
  @override
  void onClose() {
    close();
    super.onClose();
  }
}