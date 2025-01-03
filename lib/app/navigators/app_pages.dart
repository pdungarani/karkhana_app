// coverage:ignore-file

import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/pages/add_employ/add_employ_pages.dart';
import 'package:karkhana_app/app/pages/bottomBar/bottomBar_pages.dart';
import 'package:karkhana_app/app/pages/historyScreen/Screens/history_Detail.dart';
import 'package:karkhana_app/app/pages/historyScreen/history_binding.dart';
import 'package:karkhana_app/app/pages/profileScreen/Screen/exportData.dart';
import 'package:karkhana_app/app/pages/profileScreen/Screen/exportDetail.dart';
import 'package:karkhana_app/app/pages/profileScreen/Screen/language.dart';
import 'package:karkhana_app/app/pages/profileScreen/Screen/myExport.dart';
import 'package:karkhana_app/app/pages/profileScreen/Screen/withdrawalList.dart';
import 'package:karkhana_app/app/pages/profileScreen/profile_page.dart';
import 'package:karkhana_app/app/pages/userDetailScreen/userDetail_pages.dart';

part 'app_routes.dart';

/// Contains the list of pages or routes taken across the whole application.
/// This will prevent us in using context for navigation. And also providing
/// the blocs required in the next named routes.
///
/// [pages] : will contain all the pages in the application as a route
/// and will be used in the material app.
/// Will be ignored for test since all are static values and would not change.
class AppPages {
  static var transitionDuration = const Duration(milliseconds: 300);

  static const initial = _Paths.splashScreen;
  static final pages = <GetPage>[
    GetPage<SplashScreen>(
      name: _Paths.splashScreen,
      transitionDuration: transitionDuration,
      page: SplashScreen.new,
      binding: SplashBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<Logingscreen>(
      name: _Paths.logingScreen,
      transitionDuration: transitionDuration,
      page: Logingscreen.new,
      binding: LoginBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<BottomBarScreen>(
      name: _Paths.bottomBarScreen,
      transitionDuration: transitionDuration,
      page: BottomBarScreen.new,
      binding: BottomBarBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<UserDetailScreen>(
      name: _Paths.userDetailScreen,
      transitionDuration: transitionDuration,
      page: UserDetailScreen.new,
      binding: UserDetailBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<HistoryDetailScreen>(
      name: _Paths.historyDetailScreen,
      transitionDuration: transitionDuration,
      page: HistoryDetailScreen.new,
      binding: HistoryBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<SaveDiamondRate>(
      name: _Paths.saveDiamondRateScreen,
      transitionDuration: transitionDuration,
      page: SaveDiamondRate.new,
      binding: ProfileBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<AddWithdrawalScreen>(
      name: _Paths.addWithdrawalScreen,
      transitionDuration: transitionDuration,
      page: AddWithdrawalScreen.new,
      binding: ProfileBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<LanguageView>(
      name: _Paths.languageScreen,
      transitionDuration: transitionDuration,
      page: LanguageView.new,
      binding: ProfileBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<ExportDataScreen>(
      name: _Paths.exportdataScreen,
      transitionDuration: transitionDuration,
      page: ExportDataScreen.new,
      binding: ProfileBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<ExportDetailScreen>(
      name: _Paths.exportDetailScreen,
      transitionDuration: transitionDuration,
      page: ExportDetailScreen.new,
      binding: ProfileBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<MyExportScreen>(
      name: _Paths.myExportScreen,
      transitionDuration: transitionDuration,
      page: MyExportScreen.new,
      binding: ProfileBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<WithdrawalListView>(
      name: _Paths.withdrawalScreen,
      transitionDuration: transitionDuration,
      page: WithdrawalListView.new,
      binding: ProfileBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<AddEmployScreen>(
      name: _Paths.addEmployScreen,
      transitionDuration: transitionDuration,
      page: AddEmployScreen.new,
      binding: AddEmployBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
