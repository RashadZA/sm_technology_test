import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

class ImageHandleFromNetworkWidget extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double? width;
  final double? radius;
  final double? errorIconSize;
  final Color? errorIconColor;
  final BoxFit? fit;
  final Widget? errorWidget;

  const ImageHandleFromNetworkWidget({
    super.key,
    required this.imageUrl,
    required this.height,
    this.width,
    this.radius,
    this.fit,
    this.errorWidget,
    this.errorIconSize,
    this.errorIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 10),
      child: CachedNetworkImage(
          height: height,
          width: width,
          imageUrl: imageUrl,
          fit: fit ?? BoxFit.fill,
          progressIndicatorBuilder:
              (context, url, downloadProgress) => Shimmer.fromColors(
                baseColor: shimmerBaseColor,
                highlightColor: shimmerHighlightColor,
                enabled: true,
                child: SizedBox(
                  width: width,
                  height: height,
                ),
              ),
          errorWidget: (context, url, error) =>
              Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: cardColor,
                  shape: radius == 100 ? BoxShape.circle : BoxShape.rectangle,
                  borderRadius: radius == 100 ? null : BorderRadius.circular(radius ?? 10),
                ),
                alignment: Alignment.center,
                child: errorWidget ?? Icon(
                  Icons.flutter_dash,
                  size: errorIconSize,
                  color: errorIconColor ?? primaryColor,
                ),
              ),
      ),
    );
  }
}