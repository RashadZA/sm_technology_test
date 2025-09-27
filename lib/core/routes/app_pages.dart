import 'package:sm_technology_test/core/API/service/api_repositories.dart';
import 'package:get/get.dart';
import 'package:sm_technology_test/core/components/widgets/unknown_route_screen.dart';
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
  ];

}

class BindingsX {
  static BindingsBuilder initialBindigs() {
    return BindingsBuilder(() {
      Get.lazyPut<APIRepository>(() => APIRepository(), fenix: true);
    });
  }
}
