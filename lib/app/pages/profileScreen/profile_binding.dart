import 'package:karkhana_app/app/pages/profileScreen/profile_page.dart';
import 'package:karkhana_app/domain/usecases/usecases.dart';
import 'package:get/get.dart';

/// A list of bindings which will be used in the route of [SplashView].
class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(
        Get.put(
          ProfilePresenter(
            Get.put(
              ProfileUseCases(
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
