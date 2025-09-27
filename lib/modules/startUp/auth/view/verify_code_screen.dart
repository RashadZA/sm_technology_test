import 'package:sm_technology_test/core/components/widgets/buttons/core_button.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/icon_custom_button.dart';
import 'package:sm_technology_test/core/routes/app_pages.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/core_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart'; // Changed import
import 'package:sm_technology_test/modules/startUp/auth/controllers/verify_code_screen_controller.dart';

class VerifyCodeScreen extends GetWidget<VerifyCodeScreenController> {
  const VerifyCodeScreen({super.key});

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
          return ListView(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 70, bottom: 20),
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconCustomButton(
                  onPressed: () => Get.back(),
                  iconData: Icons.arrow_back_ios_new_sharp,
                  iconColor: iconColor,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: Text(
                  "Verify Code",
                  textAlign: TextAlign.center,
                  style: AppTextTheme.text24.copyWith(
                      overflow: TextOverflow.visible,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Please enter the code we just sent to email ",
                      style: AppTextTheme.text14.copyWith(
                          color: secondaryTextColor,
                          overflow: TextOverflow.visible,
                          fontWeight: FontWeight.w400
                      ),
                      children: [
                        TextSpan(
                          text: "pristia@gmail.com",
                          style: AppTextTheme.text14.copyWith(
                              overflow: TextOverflow.visible,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ]
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Pinput Widget (Replaces PinCodeTextField)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Pinput(
                  length: 4, // Same as your current length
                  controller: controller.verifyCodeFieldTextEditController,
                  obscureText: true,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(color: primaryColor),
                      color: primaryColor.withValues(alpha: 0.1),
                    ),
                  ),
                  submittedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(color: Colors.green),
                      color: greenColor.withValues(alpha: 0.1),
                    ),
                  ),
                  errorPinTheme: defaultPinTheme.copyWith(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red),
                      color:redAccentColor.withValues(alpha: 0.1),
                    ),
                  ),
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  onCompleted: (pin) {
                    controller.verifyCode(pin);
                  },
                  onChanged: (value) {
                    controller.onPinChanged(value);
                  },
                ),
              ),

              const SizedBox(height: 20),

              // Resend Code Button
              Obx(() => controller.isLoading.value
                  ? Center(child: CircularProgressIndicator(color: primaryColor))
                  : CoreButton(
                onPressed: () => controller.resendCode(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't receive code? ",
                      style: AppTextTheme.text14.copyWith(
                          color: secondaryTextColor,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    Text(
                      "Resend",
                      style: AppTextTheme.text14.copyWith(
                          color: primaryColor,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                ),
              ),
              ),
            ],
          );
        },
      ),
    );
  }
}