import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/pages/profileScreen/profile_controller.dart';

class MyExportScreen extends StatelessWidget {
  const MyExportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) => const Scaffold(
        backgroundColor: ColorsValue.greyBorderColor,
        body: SafeArea(
          child: Column(
            children: [
              Text("data"),
            ],
          ),
        ),
      ),
    );
  }
}
