import 'package:sm_technology_test/core/components/widgets/buttons/core_button.dart';
import 'package:flutter/material.dart';

class IconCustomButton extends StatelessWidget {
  final double? iconSize;
  final double? containerWidth;
  final double? containerHeight;
  final double? elevation;
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
    this.elevation,
    this.iconSize,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return CoreButton(
      onPressed: onPressed,
      child: Card(
        elevation: elevation ?? 3,
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: SizedBox(
          width: containerWidth ?? 50,
          height: containerHeight ?? 50,
          child: Center(
            child: Icon(
              // selectedStatus ? Icons.favorite : Icons.favorite_border,
              iconData,
              size: iconSize ?? 25,
              color: iconColor,
              // color: selectedStatus ? primaryColor : blackColor,
            ),
          ),
        ),
      ),
    );
  }
}
