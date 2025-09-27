import 'package:sm_technology_test/core/components/widgets/buttons/core_button.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String buttonText;
  final bool isButtonIsTapped;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final double? width;
  final double? defaultLoaderWidth;
  final double? height;
  final double? defaultLoaderHeight;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final Decoration? decoration;
  final TextStyle? buttonTextStyle;
  final TextAlign? buttonTextAlign;
  final double? defaultLoaderStrokeWidth;
  final Color? defaultLoaderColor;
  final double? defaultLoaderRadius;
  final double? defaultLoaderValue;
  final Widget? defaultLoaderWidget;
  final Widget? buttonWidget;
  final double? elevation;
  final void Function()? onPressed;

  const CustomTextButton({
    super.key,
    required this.buttonText,
    required this.isButtonIsTapped,
    this.buttonColor,
    this.buttonTextColor,
    this.onPressed,
    this.width,
    this.defaultLoaderWidth,
    this.height,
    this.defaultLoaderHeight,
    this.borderRadius,
    this.padding,
    this.buttonTextStyle,
    this.buttonTextAlign,
    this.decoration,
    this.defaultLoaderStrokeWidth,
    this.defaultLoaderColor,
    this.defaultLoaderRadius,
    this.defaultLoaderValue,
    this.defaultLoaderWidget,
    this.buttonWidget,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return CoreButton(
      onPressed: onPressed,
      child: Card(
        elevation: elevation ?? 3,
        color: buttonColor ?? buttonPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
        ),
        child: Container(
          width: width ?? 150,
          height: height ?? 45,
          // padding: padding ?? (const EdgeInsets.symmetric(horizontal: 15,vertical: 8)),
          alignment: Alignment.center,
          decoration: decoration ?? BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
            color: buttonColor ?? buttonPrimaryColor,
              boxShadow:  [
                BoxShadow(
                  color: buttonColor != null ? buttonColor!.withValues(alpha: 0.5) : ( buttonPrimaryColor),
                  spreadRadius:  0.5,
                  blurRadius: 0.5,
                  offset: const Offset(0, 0.5),
                ),
              ]
          ),
          child: isButtonIsTapped ? (
              defaultLoaderWidget ?? defaultLoaderOfCircularProgressIndicator(
                width: defaultLoaderWidth ?? 30,
                height: defaultLoaderHeight ?? 30,
                strokeWidth: defaultLoaderStrokeWidth ?? 3,
                color: defaultLoaderColor ?? whiteColor,
                radius: defaultLoaderRadius,
                value: defaultLoaderValue,
              )
          ) : (buttonWidget ?? Text(
            buttonText,
            textAlign: buttonTextAlign ?? TextAlign.center,
            style: buttonTextStyle ?? AppTextTheme.text16.copyWith(
              color: buttonTextColor ?? whiteColor,
            ),
          )),
        ),
      ),
    );
  }
}