import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/pages/profileScreen/profile_page.dart';

class ExportDetailScreen extends StatefulWidget {
  const ExportDetailScreen({super.key});

  @override
  State<ExportDetailScreen> createState() => _ExportDetailScreenState();
}

class _ExportDetailScreenState extends State<ExportDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) => Scaffold(
        backgroundColor: ColorsValue.greyBorderColor,
        appBar: AppBar(
          title: Text(
            "export_data".tr,
            style: Styles.black50022.copyWith(fontSize: 18),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: Dimens.edgeInsetsSymmetricH20.copyWith(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "check_any_data".tr,
                      style: Styles.black50022.copyWith(fontSize: 16),
                    ),
                    RadioListTile<int>(
                      dense: true,
                      value: 1,
                      groupValue: controller.groupValue,
                      title: Transform.translate(
                        offset: const Offset(-15, 0),
                        child: Text(
                          "whole_data".tr,
                          style: Styles.black50022.copyWith(fontSize: 14),
                        ),
                      ),
                      onChanged: (value) {
                        controller.groupValue = value ?? 0;
                        controller.update();
                      },
                    ),
                    RadioListTile<int>(
                        value: 2,
                        groupValue: controller.groupValue,
                        title: Transform.translate(
                          offset: const Offset(-15, 0),
                          child: Text(
                            "selected_data_range".tr,
                            style: Styles.black50022.copyWith(fontSize: 14),
                          ),
                        ),
                        onChanged: (value) {
                          controller.groupValue = value ?? 0;
                          controller.update();
                        }),
                    Dimens.boxHeight20,
                    CustomButton(
                      text: "save".tr,
                      height: 45,
                      onTap: () {
                        print(controller.groupValue);
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
