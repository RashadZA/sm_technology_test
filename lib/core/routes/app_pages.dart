import 'package:sm_technology_test/core/API/service/api_repositories.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {

}

class BindingsX {
  static BindingsBuilder initialBindigs() {
    return BindingsBuilder(() {
      Get.lazyPut<APIRepository>(() => APIRepository(), fenix: true);
    });
  }
}
