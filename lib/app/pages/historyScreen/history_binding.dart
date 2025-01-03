import 'package:karkhana_app/domain/usecases/usecases.dart';
import 'package:get/get.dart';
import 'history_page.dart';

/// A list of bindings which will be used in the route of [SplashView].
class HistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HistoryController>(
          () =>
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
  }
}
