// coverage:ignore-file
part of 'app_pages.dart';

/// A chunks of routes and the path names which will be used to create
/// routes in [AppPages].
abstract class Routes {
  static const logingScreen = _Paths.logingScreen;
  static const addEmployScreen = _Paths.addEmployScreen;
  static const splashScreen = _Paths.splashScreen;
  static const bottomBarScreen = _Paths.bottomBarScreen;
  static const userDetailScreen = _Paths.userDetailScreen;
  static const historyDetailScreen = _Paths.historyDetailScreen;
  static const saveDiamondRateScreen = _Paths.saveDiamondRateScreen;
  static const addWithdrawalScreen = _Paths.addWithdrawalScreen;
  static const languageScreen = _Paths.languageScreen;
  static const exportdataScreen = _Paths.exportdataScreen;
  static const exportDetailScreen = _Paths.exportDetailScreen;
  static const myExportScreen = _Paths.myExportScreen;
  static const withdrawalScreen = _Paths.withdrawalScreen;
}

abstract class _Paths {
  static const splashScreen = '/splashScreen';
  static const addEmployScreen = '/addEmployScreen';
  static const logingScreen = '/logingScreen';
  static const bottomBarScreen = '/bottomBarScreen';
  static const userDetailScreen = '/userDetailScreen';
  static const historyDetailScreen = '/historyDetailScreen';
  static const saveDiamondRateScreen = '/saveDiamondRateScreen';
  static const addWithdrawalScreen = '/addWithdrawalScreen';
  static const languageScreen = '/LanguageView';
  static const exportdataScreen = '/ExportdataPage';
  static const exportDetailScreen = '/exportDetailScreen';
  static const myExportScreen = '/myExportScreen';
  static const withdrawalScreen = '/withdrawalScreen';
}
