import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShimmerContainerWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final double? radius;
  const ShimmerContainerWidget({super.key, this.width, this.height, this.radius});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 10),
      child: Container(
        width: width ?? Get.width,
        height: height ?? 20.0,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(radius ?? 10),
            boxShadow: const [
              BoxShadow(
                color:  Colors.black54,
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1),
              ),
            ]
        ),
      ),
    );
  }
}