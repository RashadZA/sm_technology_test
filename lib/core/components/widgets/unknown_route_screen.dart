import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnknownRouteScreen extends StatelessWidget {
  const UnknownRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return SizedBox(
            width: Get.width,
            height: Get.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.flutter_dash,
                  size: 250,
                ),
                const SizedBox(height: 15,),
                Text(
                  "Unknown Screen",
                  style: AppTextTheme.text16,
                ).defaultContainer(),
              ],
            ),
          );
        },
      ),
    );
  }
}
