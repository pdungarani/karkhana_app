// coverage:ignore-file

import 'package:get/get.dart';
import 'package:karkhana_app/app/navigators/navigators.dart';

/// A chunk of routes taken in the application.
///
/// Will be ignored for test since all are static values and would not change.
abstract class RouteManagement {
  static void goToLoginView() => Get.offAllNamed<void>(Routes.logingScreen);

  static void goToBottomBarView() =>
      Get.offAllNamed<void>(Routes.bottomBarScreen);

  static void goToUserDetailView(String userName) =>
      Get.toNamed<void>(Routes.userDetailScreen, arguments: userName);

  static void goToHistoryDetailView(String userName) =>
      Get.toNamed<void>(Routes.historyDetailScreen, arguments: userName);

  static void goToSaveDiamondRateView() =>
      Get.toNamed<void>(Routes.saveDiamondRateScreen);

  static void goToAddWithdrawalView() =>
      Get.toNamed<void>(Routes.addWithdrawalScreen);

  static void goToLanguageView() => Get.toNamed<void>(Routes.languageScreen);
  static void goToexportDataView() =>
      Get.toNamed<void>(Routes.exportdataScreen);
  static void goToexportDetailView() =>
      Get.toNamed<void>(Routes.exportDetailScreen);
  static void goTomyExportView() => Get.toNamed<void>(Routes.myExportScreen);
  static void goToWithdrawalView() =>
      Get.toNamed<void>(Routes.withdrawalScreen);
  static void goToaddEmployView() => Get.toNamed<void>(Routes.addEmployScreen);
}
