import 'package:get/get.dart';
import 'package:karkhana_app/app/pages/bottomBar/bottomBar_pages.dart';
import 'package:karkhana_app/app/pages/historyScreen/history_page.dart';
import 'package:karkhana_app/app/pages/homeScreen/home_pages.dart';
import 'package:karkhana_app/app/pages/profileScreen/profile_page.dart';
import 'package:karkhana_app/domain/usecases/usecases.dart';

class BottomBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomBarController>(
      () => BottomBarController(
        Get.put(
          BottomBarPresenter(
            Get.put(
              BottomBarUseCases(
                Get.find(),
              ),
              permanent: true,
            ),
          ),
        ),
      ),
    );
    Get.put<HomeController>(
      HomeController(
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
    Get.put<HistoryController>(
      HistoryController(
        Get.put(
          HistoryPresenter(
            Get.put(
              HistoryUseCases(
                Get.find(),
              ),
              permanent: true,
            ),
          ),
        ),
      ),
    );
    Get.put<ProfileController>(
      ProfileController(
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
