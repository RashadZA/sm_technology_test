import 'package:sm_technology_test/core/components/widgets/buttons/core_button.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/core_flat_button.dart';
import 'package:sm_technology_test/core/components/widgets/check_box_custom_widget.dart';
import 'package:sm_technology_test/core/components/widgets/core_text_field.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sm_technology_test/modules/startUp/auth/controllers/sign_in_screen_controller.dart';

class SignInScreen extends GetWidget<SignInScreenController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Obx(()=> Form(
            key: controller.fromStateKey,
            child: ListView(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 70, bottom: 40),
              children: [
                Center(
                  child: Image.asset(AppImages.signInIcon, width: 70,height: 70,),
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: Text(
                    "Welcome Back!",
                    style: AppTextTheme.text24.copyWith(
                        // color: primaryColor,
                        overflow: TextOverflow.visible,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Please login first to start your Theory Test.",
                    textAlign: TextAlign.center,
                    style: AppTextTheme.text14.copyWith(
                        color: secondaryTextColor,
                        overflow: TextOverflow.visible,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CoreTextField(
                  titleText: "Email Address",
                  hintText: "example@gmail.com",
                  keyboardType: TextInputType.text,
                  controller: controller.emailTextEditController,
                  prefixIcon: Icons.email_rounded,
                  validator: (value)=> AppValidators.emailValidator(value),
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
                  prefixIcon: Icons.password_outlined,
                  validator: (value)=> AppValidators.emptyNullValidator(value,errorMessage: "Password Required"),
                  suffixIcon: CoreButton(
                    onPressed: ()=> controller.passwordFieldObscureStatusChangeMethod(),
                    child: Icon(
                      controller.obscureTextStatus.value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                      size: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CoreButton(
                  onPressed: () => controller.forgotPasswordOnPressedMethod(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Row(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CheckBoxCustomWidget(
                              onPressed: () => controller.rememberMeStatusChangeMethod(),
                              isSelected: controller.rememberMeStatus.value,
                            ),
                            Flexible(
                              child: Text(
                                "Remember Me",
                                style: AppTextTheme.text14.copyWith(
                                  color: secondaryTextColor,
                                  fontWeight: FontWeight.w500,
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Text(
                          "Forgot Password",
                          style: AppTextTheme.text14.copyWith(
                            color: secondaryTextColor,
                            fontWeight: FontWeight.w500,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CoreFlatButton(
                  borderRadius: 50,
                  onPressed: () => controller.signInOnPressedMethod(),
                  text: "SIGN IN",
                  isGradientBg: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "New to Theory Test? ",
                    style: AppTextTheme.text20.copyWith(
                        color: secondaryTextColor,
                        overflow: TextOverflow.visible,
                        fontWeight: FontWeight.w400
                    ),
                    children: [
                      WidgetSpan(
                        child: CoreButton(
                          onPressed: () => controller.createAccountOnPressedMethod(),
                        child: Text(
                          "Create Account",
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
          );
        },
      ),
    );
  }
}
