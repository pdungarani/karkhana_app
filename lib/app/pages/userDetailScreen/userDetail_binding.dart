import 'package:get/get.dart';
import 'package:karkhana_app/domain/usecases/userDetail_usercases.dart';

import 'userDetail_pages.dart';

class UserDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserDetailController>(
      () => UserDetailController(
        Get.put(
          UserDetailPresenter(
            Get.put(
              UserDetailUseCases(
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
