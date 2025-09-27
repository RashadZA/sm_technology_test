import 'package:sm_technology_test/core/components/widgets/buttons/icon_custom_button.dart';
import 'package:sm_technology_test/core/components/widgets/check_box_custom_widget.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/core_button.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/core_flat_button.dart';
import 'package:sm_technology_test/core/components/widgets/core_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sm_technology_test/modules/startUp/auth/controllers/sign_up_screen_controller.dart';

class SignUpScreen extends GetWidget<SignUpScreenController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Obx(()=> SizedBox(
            width: Get.width,
            height: Get.height,
            child: Form(
              key: controller.fromStateKey,
              child: ListView(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 70, bottom: 40),
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
                    height: 10,
                  ),
                  Text(
                    "Welcome to Eduline",
                    style: AppTextTheme.text24.copyWith(
                      // color: primaryColor,
                        overflow: TextOverflow.visible,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Let’s join to Eduline learning ecosystem & meet our professional mentor. It’s Free!",

                    style: AppTextTheme.text14.copyWith(
                        color: secondaryTextColor,
                        overflow: TextOverflow.visible,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CoreTextField(
                    titleText: "Email Address",
                    hintText: "example@gmail.com",
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    controller: controller.emailTextEditController,
                    prefixIcon: Icons.email_rounded,
                    validator: (value)=> AppValidators.emailValidator(value),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CoreTextField(
                    titleText: "Full Name",
                    hintText: "Full Name",
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    controller: controller.nameTextEditController,
                    validator: (value)=> AppValidators.emptyNullValidator(value,errorMessage: "Full Name Required"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CoreTextField(
                    hintText: "Password",
                    titleText: "Password",
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    obscureText: controller.obscureTextStatus.value,
                    controller: controller.passwordTextEditController,
                    validator: (value)=> AppValidators.emptyNullValidator(value,errorMessage: "Password Required"),
                    suffixIcon: CoreButton(
                      onPressed: ()=> controller.passwordFieldObscureStatusChangeMethod(),
                      child: Icon(
                        controller.obscureTextStatus.value ? Icons.visibility_off : Icons.visibility,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Password Strength Indicator
                  Row(
                    spacing: 8,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: LinearProgressIndicator(
                            value: controller.getPasswordStrength().value,
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(controller.getPasswordStrength().color),
                            minHeight: 6,
                          ),
                        ),
                      ),
                      Text(
                        controller.getPasswordStrength().label,
                        style: AppTextTheme.text14.copyWith(
                          fontWeight: FontWeight.w600,
                          color: controller.getPasswordStrength().color,
                        ),
                      ),
                    ],
                  ),

                  // Password Requirements Text
                  const SizedBox(height: 8),
                  Text(
                    "At least 8 characters with a combination of letters and numbers",
                    style: AppTextTheme.text14.copyWith(
                      color: controller.getPasswordStrength().color,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CoreFlatButton(
                    borderRadius: 50,
                    onPressed: () => controller.signUpOnPressedMethod(),
                    text: "Labe!",
                    isGradientBg: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "Already have an account? ",
                        style: AppTextTheme.text20.copyWith(
                            color: secondaryTextColor,
                            overflow: TextOverflow.visible,
                            fontWeight: FontWeight.w400
                        ),
                        children: [
                          WidgetSpan(
                              child: CoreButton(
                                onPressed: () => controller.alreadyHaveAnAccountOnPressedMethod(),
                                child: Text(
                                  "Sign In",
                                  textAlign: TextAlign.center,
                                  style: AppTextTheme.text16.copyWith(
                                      color: primaryColor,
                                      overflow: TextOverflow.visible,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),)
                          ),

                        ]
                    ),
                  ),
                ],
              ),
            ),
          ),);
        },
      ),
    );
  }
}
