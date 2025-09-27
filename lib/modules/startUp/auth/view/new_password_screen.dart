import 'package:sm_technology_test/core/components/widgets/buttons/core_button.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/core_flat_button.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/icon_custom_button.dart';
import 'package:sm_technology_test/core/components/widgets/core_text_field.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sm_technology_test/modules/startUp/auth/controllers/new_password_screen_controller.dart';

class NewPasswordScreen extends GetWidget<NewPasswordScreenController> {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Obx(()=> Form(
            key: controller.fromStateKey,
            child: ListView(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 50, bottom: 20),
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconCustomButton(
                    onPressed: () => Get.back(),
                    iconData: Icons.arrow_back_ios_new_sharp,
                    iconColor: iconColor,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "Reset Password",
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
                    "Your password must be at least 8 characters long and include a combination of letters, numbers",
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
                CoreTextField(
                  hintText: "New Password",
                  titleText: "New Password",
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  obscureText: controller.passwordObscureTextStatus.value,
                  controller: controller.passwordTextEditController,
                  prefixIcon: Icons.password_outlined,
                  validator: (value)=> AppValidators.emptyNullValidator(value,errorMessage: "New Password Required"),
                  suffixIcon: CoreButton(
                    onPressed: ()=> controller.passwordFieldObscureStatusChangeMethod(),
                    child: Icon(
                      controller.passwordObscureTextStatus.value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CoreTextField(
                  hintText: "Confirm Password",
                  titleText: "Confirm Password",
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  obscureText: controller.confirmPasswordObscureTextStatus.value,
                  controller: controller.confirmPasswordTextEditController,
                  prefixIcon: Icons.password_outlined,
                  validator: (value)=> AppValidators.emptyNullValidator(value,errorMessage: "Confirm Password Required"),
                  suffixIcon: CoreButton(
                    onPressed: ()=> controller.confirmPasswordFieldObscureStatusChangeMethod(),
                    child: Icon(
                      controller.confirmPasswordObscureTextStatus.value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CoreFlatButton(
                  onPressed: () => controller.createNewPasswordOnPressedMethod(),
                  text: "Submit",
                  isGradientBg: true,
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
