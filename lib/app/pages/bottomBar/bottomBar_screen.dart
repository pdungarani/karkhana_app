import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/pages/bottomBar/bottomBar_pages.dart';

class BottomBarScreen extends StatelessWidget {
  const BottomBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(
      builder: (controller) => Scaffold(
        backgroundColor: ColorsValue.blueColor.withOpacity(0.9),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorsValue.blueColor.withOpacity(0.60),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            controller.selectedIndex = value;
            controller.update();
          },
          currentIndex: controller.selectedIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'History',
              icon: Icon(Icons.history),
            ),
            BottomNavigationBarItem(
              label: 'Setting',
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        body: controller.children[controller.selectedIndex],
      ),
    );
  }
}
