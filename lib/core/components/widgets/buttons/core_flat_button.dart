import 'package:sm_technology_test/core/components/widgets/buttons/core_button.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:flutter/material.dart';

class CoreFlatButton extends StatelessWidget {
  final String text;
  final IconData? prefixIcon;
  final double? prefixIconSize;
  final Color? prefixIconColor;
  final double? width;
  final double height;
  final Color? bgColor;
  final double? fontSize;
  final Color? textColor;
  final BoxBorder? border;
  final Color? loaderColor;
  final bool isLoading;
  final IconData? suffixIcon;
  final double? suffixIconSize;
  final Color? suffixIconColor;
  final bool isGradientBg;
  final bool isDisabled;
  final EdgeInsets padding;
  final double borderRadius;
  final void Function()? onPressed;
  const CoreFlatButton({
    super.key,
    this.prefixIcon,
    this.prefixIconSize,
    this.prefixIconColor,
    this.border,
    this.bgColor,
    this.textColor,
    this.onPressed,
    this.fontSize,
    this.suffixIcon,
    this.suffixIconSize,
    this.suffixIconColor,
    this.loaderColor,
    required this.text,
    this.isLoading = false,
    this.isDisabled = false,
    this.borderRadius = 16.0,
    this.isGradientBg = false,
    this.width = double.infinity,
    this.height = 56,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return CoreButton(
      color: bgColor,
      onPressed: isLoading ? null : onPressed,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Opacity(
        opacity: isDisabled || onPressed == null ? 0.5 : 1,
        child: Container(
          width: width,
          height: height,
          padding: padding,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: border,
            gradient: isGradientBg
                ? LinearGradient(
                    colors: [
                      gradientStartColor,
                      gradientEndColor
                    ],
                  )
                : null,
            color: bgColor ?? buttonPrimaryColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isLoading)
                defaultLoaderOfCupertinoActivity(color: loaderColor ?? whiteColor)
              else ...[
                if (prefixIcon != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      prefixIcon,
                      size: prefixIconSize,
                      color: prefixIconColor,
                    ),
                  ),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: fontSize,
                    fontFamily: AppTextTheme.getDefaultFontFamily,
                    letterSpacing: -0.24,
                    fontWeight: FontWeight.w600,
                    color: textColor ?? whiteColor,
                  ),
                ),
                if (suffixIcon != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      suffixIcon,
                      size: suffixIconSize,
                      color: suffixIconColor,
                    ),
                  ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
