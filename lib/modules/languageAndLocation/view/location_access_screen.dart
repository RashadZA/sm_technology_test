import 'package:sm_technology_test/core/components/widgets/buttons/core_button.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/icon_custom_button.dart';
import 'package:sm_technology_test/core/routes/app_pages.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/core_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart'; // Changed import
import 'package:sm_technology_test/modules/languageAndLocation/controllers/location_access_screen_controller.dart';
import 'package:sm_technology_test/modules/startUp/auth/controllers/verify_code_screen_controller.dart';

class LocationAccessScreen extends GetWidget<LocationAccessScreenController> {
  const LocationAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Define pin theme (similar to your current design)
    final defaultPinTheme = PinTheme(
      width: 50,
      height: 50,
      textStyle: AppTextTheme.text16.copyWith(
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        // shape: BoxShape.circle, // Circle shape like your current design
        border: Border.all(color: secondaryColor),
        borderRadius: BorderRadius.circular(10),
        color: coreTextFieldBackgroundColor,
      ),
    );

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return SizedBox(
            width: Get.width,
            height: Get.height,
            child: ListView(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, top: Get.height * 0.20, bottom: Get.height * 0.20),
              children: [
                Image.asset(AppImages.mapIcon, width: 120,height: 120,),
                const SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "Enable Location",
                    textAlign: TextAlign.center,
                    style: AppTextTheme.text24.copyWith(
                        overflow: TextOverflow.visible,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "Kindly allow us to access your location to provide you with suggestions for nearby salons",
                    textAlign: TextAlign.center,
                    style: AppTextTheme.text14.copyWith(
                        color: secondaryTextColor,
                        overflow: TextOverflow.visible,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                CoreFlatButton(
                  borderRadius: 50,
                  onPressed: () => controller.enableButtonOnPressedMethod(),
                  text: "Enable",
                ),
                const SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: CoreButton(
                    onPressed: () => controller.enableButtonOnPressedMethod(),
                    child: Text(
                      "Skip, Not Now",
                      textAlign: TextAlign.center,
                      style: AppTextTheme.text18.copyWith(
                          overflow: TextOverflow.visible,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}