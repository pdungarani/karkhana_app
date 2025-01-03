import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/navigators/navigators.dart';

class SplashController extends GetxController {
  SplashController(this.splashPresenter);

  final SplashPresenter splashPresenter;

  @override
  void onInit() {
    super.onInit();

    Future.delayed(const Duration(seconds: 2)).then(
      (value) {
        // RouteManagement.goToaddEmployView();
        RouteManagement.goToLoginView();
        // RouteManagement.goToBottomBarView();
      },
    );
  }
}
