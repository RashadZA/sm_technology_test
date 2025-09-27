import 'package:sm_technology_test/core/components/widgets/buttons/core_button.dart';
import 'package:flutter/material.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';

class IconCustomButton extends StatelessWidget {
  final double? iconSize;
  final double? containerWidth;
  final double? containerHeight;
  final double? borderWidth;
  final IconData iconData;
  final Color iconColor;
  final Color? backgroundColor;
  final void Function()? onPressed;

  const IconCustomButton({
    super.key,
    required this.iconData,
    required this.iconColor,
    this.onPressed,
    this.containerWidth,
    this.containerHeight,
    this.borderWidth,
    this.iconSize,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return CoreButton(
      onPressed: onPressed,
      child: Container(
        width: containerWidth ?? 50,
        height: containerHeight ?? 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: secondaryBorderColor,
            width: borderWidth ?? 1,
          )
        ),
        child: Icon(
          // selectedStatus ? Icons.favorite : Icons.favorite_border,
          iconData,
          size: iconSize ?? 25,
          color: iconColor,
          // color: selectedStatus ? primaryColor : blackColor,
        ),
      ),
    );
  }
}
