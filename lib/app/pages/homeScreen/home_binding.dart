import 'package:get/get.dart';
import 'package:karkhana_app/domain/usecases/home_usercase.dart';

import 'home_pages.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        Get.put(
          HomePresenter(
            Get.put(
              HomeUseCases(
                Get.find(),
              ),
              permanent: true,
            ),
          ),
        ),
      ),
    );
  }
}
