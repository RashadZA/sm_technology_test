import 'package:sm_technology_test/core/API/service/api_repositories.dart';
import 'package:get/get.dart';
import 'package:sm_technology_test/core/components/widgets/unknown_route_screen.dart';
import 'package:sm_technology_test/modules/startUp/auth/controllers/forgot_password_screen_controller.dart';
import 'package:sm_technology_test/modules/startUp/auth/controllers/new_password_screen_controller.dart';
import 'package:sm_technology_test/modules/startUp/auth/controllers/sign_in_screen_controller.dart';
import 'package:sm_technology_test/modules/startUp/auth/controllers/sign_up_screen_controller.dart';
import 'package:sm_technology_test/modules/startUp/auth/controllers/verify_code_screen_controller.dart';
import 'package:sm_technology_test/modules/startUp/auth/view/forgot_password.dart';
import 'package:sm_technology_test/modules/startUp/auth/view/new_password_screen.dart';
import 'package:sm_technology_test/modules/startUp/auth/view/sign_in_screen.dart';
import 'package:sm_technology_test/modules/startUp/auth/view/signup_screen.dart';
import 'package:sm_technology_test/modules/startUp/auth/view/verify_code_screen.dart';
import 'package:sm_technology_test/modules/startUp/onboarding/controller/on_boarding_screen_controller.dart';
import 'package:sm_technology_test/modules/startUp/onboarding/view/screen/on_boarding_screen.dart';
import 'package:sm_technology_test/modules/startUp/splash/splash_screen.dart';
import 'package:sm_technology_test/modules/startUp/splash/splash_screen_controller.dart';

part 'app_routes.dart';

class AppPages {

  static final unknownRoute = GetPage(
    name: Routes.unknown404,
    page: () => const UnknownRouteScreen(),
  );
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<SplashScreenController>(() => SplashScreenController()),
      ),
    ),
    GetPage(
      name: Routes.onBoardingScreen,
      page: () => const OnBoardingScreen(),
      transition: Transition.rightToLeft, // Open from right to left
      transitionDuration: const Duration(milliseconds: 300),
      binding: BindingsBuilder(
            () => Get.lazyPut<OnBoardingScreenController>(() => OnBoardingScreenController()),
      ),
    ),
    GetPage(
      name: Routes.signInScreen,
      page: () => const SignInScreen(),
      transition: Transition.rightToLeft, // Open from right to left
      transitionDuration: const Duration(milliseconds: 300),
      binding: BindingsBuilder(
            () => Get.lazyPut<SignInScreenController>(() => SignInScreenController()),
      ),
    ),
    GetPage(
      name: Routes.forgotScreen,
      page: () => const ForgotPasswordScreen(),
      transition: Transition.rightToLeft, // Open from right to left
      transitionDuration: const Duration(milliseconds: 300),
      binding: BindingsBuilder(
            () => Get.lazyPut<ForgotPasswordScreenController>(() => ForgotPasswordScreenController()),
      ),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => const SignUpScreen(),
      transition: Transition.rightToLeft, // Open from right to left
      transitionDuration: const Duration(milliseconds: 300),
      binding: BindingsBuilder(
            () => Get.lazyPut<SignUpScreenController>(() => SignUpScreenController()),
      ),
    ),
    GetPage(
      name: Routes.verifyCodeScreen,
      page: () => const VerifyCodeScreen(),
      transition: Transition.rightToLeft, // Open from right to left
      transitionDuration: const Duration(milliseconds: 300),
      binding: BindingsBuilder(
            () => Get.lazyPut<VerifyCodeScreenController>(() => VerifyCodeScreenController()),
      ),
    ),
    GetPage(
      name: Routes.newPasswordScreen,
      page: () => const NewPasswordScreen(),
      transition: Transition.rightToLeft, // Open from right to left
      transitionDuration: const Duration(milliseconds: 300),
      binding: BindingsBuilder(
            () => Get.lazyPut<NewPasswordScreenController>(() => NewPasswordScreenController()),
      ),
    ),
  ];

}

class BindingsX {
  static BindingsBuilder initialBindigs() {
    return BindingsBuilder(() {
      Get.lazyPut<APIRepository>(() => APIRepository(), fenix: true);
    });
  }
}
