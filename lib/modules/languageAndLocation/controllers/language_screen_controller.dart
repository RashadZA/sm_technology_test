import 'dart:async';
import 'package:get/get.dart';
import 'package:sm_technology_test/core/utils/demo_data.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:sm_technology_test/modules/languageAndLocation/models/language_response_model.dart';

class LanguageScreenController extends GetxController {

  RxList<LanguageDataModel> languageList = <LanguageDataModel>[].obs;

  Rx<LanguageResponseModel> languageResponse = LanguageResponseModel().obs;
  Rx<LanguageDataModel> selectedLanguage = LanguageDataModel().obs;

  RxBool languageScreenDataOnProcessing = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    languageScreenDataOnProcessing.value = true;
    await Future.wait({
      getLanguageData(),
    });
    languageScreenDataOnProcessing.value = false;
    update();
  }

  /// Collect Language Data
  Future<void> getLanguageData() async {
    languageResponse.value = LanguageResponseModel.fromJson(languageDemoData);
    languageList.value = languageResponse.value.data ?? <LanguageDataModel>[];
    selectedLanguage.value = languageList.isNotEmpty ? languageList.first : LanguageDataModel();
    update();
  }

  Future<void> continueButtonOnPressedMethod() async {
    if(languageScreenDataOnProcessing.value){
      "Please wait".infoSnackBar();
    } else{
      // Get.toNamed(Routes.signUpScreen);
    }
  }
  Future<void> selectedButtonOnPressedMethod(LanguageDataModel language) async {
    selectedLanguage.value = language;
    update();
  }

  Future<void> close() async {}
  @override
  void onClose() {
    close();
    super.onClose();
  }
}