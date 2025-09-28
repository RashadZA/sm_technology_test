part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const unknown404 = _Paths.unknown404;
  static const splashScreen = _Paths.splashScreen;
  static const onBoardingScreen = _Paths.onBoardingScreen;
  static const signInScreen = _Paths.signInScreen;
  static const forgotScreen = _Paths.forgotScreen;
  static const signUpScreen = _Paths.signUpScreen;
  static const verifyCodeScreen = _Paths.verifyCodeScreen;
  static const newPasswordScreen = _Paths.newPasswordScreen;
  static const locationAccessScreen = _Paths.locationAccessScreen;
  static const languageScreen = _Paths.languageScreen;
  static const mainScreen = _Paths.mainScreen;
}

abstract class _Paths {
  static const unknown404 = '/404';
  static const splashScreen = '/splashScreen';
  static const onBoardingScreen = '/onBoardingScreen';
  static const forgotScreen = '/forgotScreen';
  static const signInScreen = '/signInScreen';
  static const signUpScreen = '/signUpScreen';
  static const verifyCodeScreen = '/verifyCodeScreen';
  static const newPasswordScreen = '/newPasswordScreen';
  static const locationAccessScreen = '/locationAccessScreen';
  static const languageScreen = '/languageScreen';
  static const mainScreen = '/mainScreen';
  static const homeScreen = '/homeScreen';
  static const shopScreen = '/shopScreen';
  static const bagScreen = '/bagScreen';
  static const favoritesScreen = '/favoritesScreen';
  static const profileScreen = '/profileScreen';
  static const myOrdersScreen = '/myOrdersScreen';
  static const orderDetailsScreen = '/orderDetailsScreen';
  static const settingScreen = '/settingScreen';
  static const checkOutScreen = '/checkOutScreen';
  static const shippingAddressesScreen = '/shippingAddressesScreen';
  static const addShippingAddressesScreen = '/addShippingAddressesScreen';
  static const promoCodesScreen = '/promoCodesScreen';
  static const paymentMethodScreen = '/paymentMethodScreen';
  static const productDetailsScreen = '/productDetailsScreen';
  static const homeSeeAllItemsScreen = '/homeSeeAllItemsScreen';
  static const productRatingAndReviewScreen = '/productRatingAndReviewScreen';
  static const shopCatalogScreen = '/shopCatalogScreen';
  static const filterScreen = '/filterScreen';
}
