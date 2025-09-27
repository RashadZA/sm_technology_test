import 'package:sm_technology_test/core/components/widgets/buttons/core_button.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/custom_text_button.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/icon_custom_button.dart';
import 'package:sm_technology_test/core/components/widgets/image_handle_from_network_network.dart';
import 'package:sm_technology_test/core/components/widgets/shimmer/shimmer_listview_builder_widget.dart';
import 'package:sm_technology_test/core/routes/app_pages.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/core_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart'; // Changed import
import 'package:sm_technology_test/modules/languageAndLocation/controllers/language_screen_controller.dart';
import 'package:sm_technology_test/modules/languageAndLocation/controllers/location_access_screen_controller.dart';
import 'package:sm_technology_test/modules/languageAndLocation/models/language_response_model.dart';
import 'package:sm_technology_test/modules/startUp/auth/controllers/verify_code_screen_controller.dart';

class LanguageScreen extends GetWidget<LanguageScreenController> {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: CoreFlatButton(
          borderRadius: 50,
          onPressed: () => controller.continueButtonOnPressedMethod(),
          text: "Continue",
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Obx(()=> SizedBox(
            width: Get.width,
            height: Get.height,
            child: ListView(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 70, bottom: 60),
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconCustomButton(
                    onPressed: () => Get.back(),
                    iconData: Icons.arrow_back_ios_new_sharp,
                    iconColor: iconColor,
                    // iconSize: 25,
                    // backgroundColor: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "What is Your Mother Language",
                  style: AppTextTheme.text20.copyWith(
                      overflow: TextOverflow.visible,
                      fontWeight: FontWeight.w700
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Discover what is a podcast description and podcast summary.",
                  style: AppTextTheme.text14.copyWith(
                      color: secondaryTextColor,
                      overflow: TextOverflow.visible,
                      fontWeight: FontWeight.w400
                  ),
                ),
                const SizedBox(height: 20),
                controller.languageScreenDataOnProcessing.value ? ShimmerListViewBuilderWidget() : ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: controller.languageList.length,
                  separatorBuilder: (context,index)=> const SizedBox(height: 16,),
                  itemBuilder: (context,index){
                    LanguageDataModel language = controller.languageList[index];
                    return Container(
                      // height: 65,
                      width: Get.width,
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      decoration: BoxDecoration(
                        boxShadow: containerShadow,
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(defaultBorderRadius),
                      ),
                      child: Row(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ImageHandleFromNetworkWidget(
                            radius: 100,
                            width: 50,
                            height: 50,
                            imageUrl: language.flagUrl ?? "",
                          ),
                          Expanded(
                            child: Text(
                              "${language.languageName ?? ""}(${language.languageCode ?? ""})",
                              style: AppTextTheme.text18.copyWith(
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ),
                          Obx(()=> controller.selectedLanguage.value.countryCode == language.countryCode ? CustomTextButton(
                            onPressed: (){},
                            width: 115,
                            height: 40,
                            borderRadius: 25,
                            elevation: 0,
                            isButtonIsTapped: false,
                            buttonWidget: Row(
                              spacing: 5,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check,
                                  size: 20,
                                  color: whiteColor,
                                ),
                                Text(
                                  "Selected",
                                  style: AppTextTheme.text14.copyWith(color: whiteColor),
                                )
                              ],
                            ),
                          ) : CustomTextButton(
                            width: 100,
                            height: 40,
                            borderRadius: 10,
                            elevation: 1,
                            buttonText: "Select",
                            onPressed: ()=> controller.selectedButtonOnPressedMethod(language),
                            buttonColor: buttonSecondaryColor,
                            buttonTextStyle: AppTextTheme.text18.copyWith(
                              color: secondaryTextColor,
                            ),
                            isButtonIsTapped: false,
                          ),),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          );
        },
      ),
    );
  }
}