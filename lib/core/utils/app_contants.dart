part of 'design_utils.dart';

extension WidgetExtension on Widget{

  Widget defaultLoaderOfCupertinoActivity({
    Color? color,
    double? radius,
  }) => Center(
    child: CupertinoActivityIndicator(
      color: color ?? whiteColor,
      radius: radius ?? 10.0,
    ),
  );

  Widget defaultLoaderOfCircularProgressIndicator({
    Color? color,
    double? radius,
    double? width,
    double? height,
    double? value,
    double? strokeWidth,
  }){
    return Center(
      child: SizedBox(
        width: width,
        height: height,
        child: CircularProgressIndicator(
          strokeWidth: strokeWidth ?? 4,
          color: color ?? primaryColor,
          backgroundColor: color != null ? color.withValues(alpha: 0.5) : primaryColor.withValues(alpha: 0.5),
          value: value,
        ),
      ),
    );
  }

  Container defaultContainer({
    double hP = defaultPadding,
    double vP = defaultPadding,
    double vM = 0,
    Color? backgroundColor,
    double hM = 0,
    double borderRadius = defaultBorderRadius,
  }) =>
      Container(
        decoration: BoxDecoration(
          boxShadow: containerShadow,
          color: backgroundColor ?? whiteColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: EdgeInsets.symmetric(horizontal: hP, vertical: vP),
        margin: EdgeInsets.symmetric(horizontal: hM, vertical: vM),
        child: this,
      );

}

extension StringExtension on String {
  dynamic errorSnackBar() {
    Get
      ..closeAllSnackbars()
      ..snackbar(
        'Error !',
        this,
        backgroundColor: Colors.red.shade300,
        colorText: whiteColor,
        snackPosition: SnackPosition.TOP,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      );
  }

  dynamic successSnackBar({void Function(GetSnackBar)? onTap}) {
    Get
      ..closeAllSnackbars()
      ..snackbar(
        'Success !',
        this,
        onTap: onTap,
        backgroundColor: Colors.green.shade300,
        colorText: whiteColor,
        snackPosition: SnackPosition.TOP,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      );
  }

  dynamic infoSnackBar() {
    Get
      ..closeAllSnackbars()
      ..snackbar(
        'Info !',
        this,
        colorText: blackColor,
        backgroundColor: Colors.white38,
        snackPosition: SnackPosition.TOP,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      );
  }
}

List<BoxShadow> get containerShadow => const [
  BoxShadow(
    blurRadius: 10,
    offset: Offset(0, 4),
    color: Color(0x0f00498a),
  ),
];

Widget defaultLoaderOfCupertinoActivityForStateFullWidget({
  Color? color,
  double? radius,
}) => Center(
  child: CupertinoActivityIndicator(
    color: color ?? whiteColor,
    radius: radius ?? 10.0,
  ),
);

Widget defaultLoaderOfCircularProgressIndicatorForStateFullWidget({
  Color? color,
  Color? backgroundColor,
  double? strokeWidth,
  double? value,
}){
  return CircularProgressIndicator(
    value: value,
    backgroundColor: backgroundColor ?? primaryColor.withValues(alpha:0.3),
    color: color ?? primaryColor,
    strokeWidth: strokeWidth ?? 4.0,
  );
}

Widget titleText({
  required String title
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: AppTextTheme.text16.copyWith(
          color: secondaryTextColor,
        ),
      ),
      const SizedBox(
        height: 5,
      ),
    ],
  );
}

String maskCardNumber(String cardNumber) {
  // Get the last 4 digits of the card number
  String lastFourDigits = cardNumber.substring(cardNumber.length - 4);

  // Create the masked card number format
  return "* * * *   * * * *   * * * *   $lastFourDigits";
}



OutlineInputBorder defaultFocusedBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12),
  borderSide: BorderSide(width: 1, color: greyColor.withValues(alpha: .67)),
);

OutlineInputBorder defaultEnabledBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12),
  borderSide: const BorderSide(width: 1, color: greyColor),
);

OutlineInputBorder defaultFocusedErrorBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12),
  borderSide: const BorderSide(width: 1, color: greyColor),
);

OutlineInputBorder defaultErrorBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12),
  borderSide: const BorderSide(width: 1, color: redAccentColor),
);
OutlineInputBorder defaultDisableBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12),
  borderSide: const BorderSide(width: 0, color: transparentColor),
);

OutlineInputBorder customizeFocusedBorder({double? borderRadius, double? borderSideWidth})=> OutlineInputBorder(
  borderRadius: BorderRadius.circular(borderRadius ?? 12),
  borderSide: BorderSide(width: borderSideWidth ?? 1, color: greyColor.withValues(alpha: .67)),
);

OutlineInputBorder customizeEnabledBorder({double? borderRadius, double? borderSideWidth})=> OutlineInputBorder(
  borderRadius: BorderRadius.circular(borderRadius ?? 12),
  borderSide: BorderSide(width: borderSideWidth ?? 1, color: greyColor),
);

OutlineInputBorder customizeFocusedErrorBorder({double? borderRadius, double? borderSideWidth})=> OutlineInputBorder(
  borderRadius: BorderRadius.circular(borderRadius ?? 12),
  borderSide: BorderSide(width: borderSideWidth ?? 1, color: greyColor),
);

OutlineInputBorder customizeErrorBorder({double? borderRadius, double? borderSideWidth})=> OutlineInputBorder(
  borderRadius: BorderRadius.circular(borderRadius ?? 12),
  borderSide: BorderSide(width: borderSideWidth ?? 1, color: redAccentColor),
);

Widget showImageFromFilePath({
  required String imagePath,
  double width = 120,
  double height = 120,
  double radius = 10,
  bool showDeleteButton = true,
  Future<void> Function()? deleteImageFunction,
}) {
  return Stack(
    children: [
      Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: buttonFillColorForLightMode,
          image: DecorationImage(
            image: FileImage(File(imagePath)), // Use FileImage for local file paths
            fit: BoxFit.cover, // Ensure the image covers the container
          ),
        ),
      ),
      Positioned(
        top: 5,
        right: 5,
        child: CoreButton(
            onPressed: deleteImageFunction,
            child: Icon(
              Icons.delete,
              size: 30,
              color: redAccentColor,
            ),
        ),
      ),
    ],
  );
}

enum SortType {
  unitPriceLowToHigh,
  unitPriceHighToLow,
  discountedPriceLowToHigh,
  discountedPriceHighToLow,
}