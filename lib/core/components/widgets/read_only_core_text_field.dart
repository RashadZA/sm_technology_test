import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReadOnlyCoreTextField extends StatelessWidget {
  final String? labelText;
  final String text;
  final double fontSize;
  final int? maxLines;
  final Color? fillColor;
  final Color? textColor;
  final String? helperText;
  final IconData? suffixIcon;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final IconData? prefixIcon;
  final double prefixIconSize;
  final double suffixIconSize;
  final void Function()? onTap;
  final Color? hintTextColor;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final void Function(String)? onSubmit;
  final void Function(String)? onChanged;

  const ReadOnlyCoreTextField({
    super.key,
    required this.text,
    this.labelText,
    this.prefixIcon,
    this.helperText,
    this.fontSize = 18,
    this.maxLines = 1,
    this.onTap,
    this.fillColor,
    this.onSubmit,
    this.textColor,
    this.onChanged,
    this.prefixIconColor,
    this.prefixIconSize = 20,
    this.suffixIconSize = 20,
    this.suffixIcon,
    this.overflow,
    this.hintTextColor,
    this.suffixIconColor,
    this.decoration,
  });

  static OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide:
    BorderSide(width: 0, color: coreTextFieldBackgroundColor.withValues(alpha:.67),),
  );

  static OutlineInputBorder enabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(width: 0, color: coreTextFieldBackgroundColor,),
  );

  static OutlineInputBorder focusedErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(width: 0, color: coreTextFieldBackgroundColor),
  );
  static OutlineInputBorder errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide:
    const BorderSide(width: 1, color: redAccentColor,),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labelText == null ? Container() : titleText(title: labelText ?? ""),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: fillColor ?? coreTextFieldBackgroundColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              prefixIcon != null ? SizedBox(
                width: prefixIconSize,
                child: Icon(
                  prefixIcon,
                  size: prefixIconSize,
                  color: prefixIconColor ?? coreTextFieldDefaultIconColor,
                ),
              ) : Container(),
              SizedBox(width: prefixIcon != null ? 10 : 0,),
              SizedBox(
                width: Get.width - ((prefixIcon != null ? (prefixIconSize + 10) : 0) + (suffixIcon != null ? (suffixIconSize + 10) : 0) + 60),
                child: Text(
                  text,
                  maxLines: maxLines,
                  style: TextStyle(
                    fontSize: fontSize,
                    letterSpacing: -.24,
                    color: textColor ?? primaryTextColor,
                    fontWeight: FontWeight.normal,
                    fontFamily: AppTextTheme.getDefaultFontFamily,
                    overflow: overflow ?? TextOverflow.visible,
                    decoration: decoration ?? TextDecoration.none,
                  ),
                ),
              ),
              SizedBox(width: suffixIcon != null ? 10 : 0,),
              suffixIcon != null ? SizedBox(
                width: prefixIconSize,
                child: Icon(
                  suffixIcon,
                  size: suffixIconSize,
                  color: suffixIconColor ?? coreTextFieldDefaultIconColor,
                ),
              ) : Container(),
            ],
          ),
        ),
      ],
    );
  }
}
