import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/state_manager.dart';
import 'package:karkhana_app/app/app.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (context) {
        return Scaffold(
          backgroundColor: ColorsValue.whiteColor,
          body: Center(
            child: SizedBox(
              child: SvgPicture.asset(AssetConstants.dimanod),
            ),
          ),
        );
      },
    );
  }
}
