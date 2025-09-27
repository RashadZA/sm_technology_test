import 'package:sm_technology_test/core/components/widgets/buttons/core_button.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/icon_custom_button.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/core_flat_button.dart';
import 'package:sm_technology_test/core/components/widgets/core_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sm_technology_test/modules/startUp/auth/controllers/forgot_password_screen_controller.dart';

class ForgotPasswordScreen extends GetWidget<ForgotPasswordScreenController> {
  const ForgotPasswordScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return ListView(
            padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 50, bottom: 20),
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
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: Text(
                  "Forgot Password",
                  textAlign: TextAlign.center,
                  style: AppTextTheme.text24.copyWith(
                      overflow: TextOverflow.visible,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: Text(
                  "Enter your email, we will send a verification code to email",
                  textAlign: TextAlign.center,
                  style: AppTextTheme.text14.copyWith(
                      color: secondaryTextColor,
                      overflow: TextOverflow.visible,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Form(
                key: controller.fromStateKey,
                child: CoreTextField(
                  hintText: "Email Address",
                  titleText: "Email Address",
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  controller: controller.emailTextEditController,
                  validator: (value)=> AppValidators.emailValidator(value),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CoreFlatButton(
                borderRadius: 50,
                onPressed: () => controller.continueButtonOnPressedMethod(),
                text: "Continue",
                isGradientBg: true,
              ),
              const SizedBox(
                height: 20,
              ),

            ],
          );
        },
      ),
    );
  }
}
