part of 'design_utils.dart';

class AppTheme {
  AppTheme._();

  static const double defaultIconSize = 24;

  static const double defaultElevation = 2;

  static const double appBarHeight = 60;

  static final lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    primaryColorLight: primaryColor,
    splashColor: transparentColor,
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    hintColor: primaryColor.withValues(alpha:.4),
    iconTheme: const IconThemeData(size: defaultIconSize),
    appBarTheme: AppBarTheme(
      elevation: defaultElevation,
      toolbarHeight: appBarHeight,
      iconTheme: const IconThemeData(size: defaultIconSize,color: blackColor),
      titleTextStyle: AppTextTheme.text18
          .copyWith(color: whiteColor, fontWeight: FontWeight.w600),
      backgroundColor: primaryColor,
    ),
    cardColor: cardColor,
    textSelectionTheme:
    const TextSelectionThemeData(cursorColor: primaryColor,selectionColor: primaryColor,selectionHandleColor: primaryColor,),
    cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
      primaryColor: primaryColor,
      barBackgroundColor: primaryShadowColor,
      scaffoldBackgroundColor: primaryShadowColor,
      textTheme: CupertinoTextThemeData(
        textStyle: AppTextTheme.text14
            .copyWith(color: whiteColor, fontWeight: FontWeight.w600),
        primaryColor: primaryColor,
      ),
    ),
  );
}
