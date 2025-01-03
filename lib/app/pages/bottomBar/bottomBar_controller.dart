import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/pages/bottomBar/bottomBar_pages.dart';
import 'package:karkhana_app/app/pages/historyScreen/history_page.dart';
import 'package:karkhana_app/app/pages/homeScreen/home_screen.dart';
import 'package:karkhana_app/app/pages/profileScreen/profile_page.dart';
import 'package:karkhana_app/domain/domain.dart';

class BottomBarController extends GetxController {
  BottomBarController(this.bottomBarPresenter);

  final BottomBarPresenter bottomBarPresenter;

  int selectedIndex = 0;
  String? language;

  @override
  onInit() {
    super.onInit();
    language = Get.find<Repository>().getStringValue(LocalKeys.language);
  }

  List<Widget> children = [
    const HomeScreen(),
    const HistoryScreen(),
    const ProfileScreen(),
  ];
}
