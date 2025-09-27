import 'package:sm_technology_test/core/components/widgets/shimmer/shimmer_container_widget.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerListViewBuilderWidget extends StatelessWidget {
  final int? itemCount;
  final double? containerWidth;
  final double? containerHeight;
  final EdgeInsetsGeometry? paddingListViewBuilder;
  final double? shimmerContainerWidth;
  final double? shimmerContainerHeight;
  final double? shimmerContainerRadius;
  final ScrollPhysics? physics;
  const ShimmerListViewBuilderWidget({
    super.key,
    this.itemCount,
    this.containerWidth,
    this.containerHeight,
    this.paddingListViewBuilder,
    this.shimmerContainerWidth,
    this.shimmerContainerHeight,
    this.shimmerContainerRadius,
    this.physics,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: shimmerBaseColor,
      highlightColor: shimmerHighlightColor,
      enabled: true,
      child: SizedBox(
        width: containerWidth ?? Get.width,
        height: containerHeight ?? Get.height,
        child: ListView.separated(
          itemCount: itemCount ?? 10,
          shrinkWrap: true,
          physics: physics,
          padding: paddingListViewBuilder ?? const EdgeInsets.all(0.0),
          separatorBuilder: (context, index)=> const SizedBox(height: 15,),
          itemBuilder: (context, index) => ShimmerContainerWidget(
            height: shimmerContainerHeight ?? 60,
            width: shimmerContainerWidth,
            radius: shimmerContainerRadius,
          ),
        ),
      ),
    );
  }
}
