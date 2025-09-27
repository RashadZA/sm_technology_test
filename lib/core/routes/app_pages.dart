import 'package:sm_technology_test/core/API/service/api_repositories.dart';
import 'package:get/get.dart';
import 'package:sm_technology_test/core/components/widgets/unknown_route_screen.dart';
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
  ];

}

class BindingsX {
  static BindingsBuilder initialBindigs() {
    return BindingsBuilder(() {
      Get.lazyPut<APIRepository>(() => APIRepository(), fenix: true);
    });
  }
}
