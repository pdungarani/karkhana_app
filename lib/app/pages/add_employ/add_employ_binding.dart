import 'package:get/get.dart';
import 'package:karkhana_app/app/pages/add_employ/add_employ_pages.dart';
import 'package:karkhana_app/domain/domain.dart';

class AddEmployBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddEmployController>(
      () => AddEmployController(
        Get.put(
          AddEmployPresenter(
            Get.put(
              AddEmployUseCases(
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
