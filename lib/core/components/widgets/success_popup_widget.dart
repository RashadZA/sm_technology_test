import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/core_button.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/core_flat_button.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';

class SuccessPopupWidget extends StatelessWidget {
  final Function()? successPopupClosedIconOnPressedMethod;
  final Function()? successPopupContinueButtonOnPressedMethod;
  final bool isLoading;
  final bool hideCloseIcon;
  final String? titleMassage;
  final String? subMassage;
  final String? iconPath;
  final double? popUpHeight;
  final double? iconWidth;
  final double? iconHeight;

  const SuccessPopupWidget({
    super.key,
    required this.successPopupContinueButtonOnPressedMethod,
    this.successPopupClosedIconOnPressedMethod,
    required this.isLoading,
    this.hideCloseIcon = false,
    this.titleMassage,
    this.iconPath,
    this.subMassage,
    this.popUpHeight,
    this.iconWidth,
    this.iconHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width > 420 ? 420 : 390,
      height: popUpHeight ?? (Get.height * 0.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: cardColor,
          border: Border.all(
            width: 1,
            color: primaryColor,
          ),
          boxShadow: [
            BoxShadow(
              color: cardShadowColor,
              spreadRadius: 0.5,
              blurRadius: 0.5,
              offset: const Offset(0, 0.1),
            ),
          ]
      ),
      child: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          hideCloseIcon ? const SizedBox(height: 1,) : Align(
            alignment: Alignment.centerRight,
            child: CoreButton(
              onPressed: successPopupClosedIconOnPressedMethod,
              child: Icon(
                Icons.close,
                size: 25,
                color: iconColor,
              ),
            ),
          ),
          Center(
            child: Image.asset(
              iconPath ?? AppImages.successIcon,
              width: iconWidth ?? (Get.width > 420 ? 390 : 360),
              height: iconHeight ?? 180,
            ),
          ),
          const SizedBox(height: 15,),
          Center(
            child: Text(
              titleMassage ?? "Successfully Registered",
              style: AppTextTheme.text22.copyWith(
                // color: primaryColor,
                  overflow: TextOverflow.visible,
                  fontWeight: FontWeight.w700
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Center(
            child: Text(
              subMassage ?? "Your account has been registered successfully, now let’s enjoy our features!",
              textAlign: TextAlign.center,
              style: AppTextTheme.text14.copyWith(
                color: secondaryTextColor,
                fontWeight: FontWeight.w400,
                overflow: TextOverflow.visible,
              ),
            ),
          ),
          const SizedBox(height: 20,),
          CoreFlatButton(
            borderRadius: 50,
            onPressed: successPopupContinueButtonOnPressedMethod,
            text: "Continue",
            isLoading: isLoading,
          ),
        ],
      ),
    );
  }
}