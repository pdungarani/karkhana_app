import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/navigators/navigators.dart';
import 'package:karkhana_app/app/pages/profileScreen/profile_controller.dart';

class ExportDataScreen extends StatelessWidget {
  const ExportDataScreen({super.key});

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
              controller.exporter(
                () => RouteManagement.goToexportDetailView(),
                'pdf'.tr,
                AssetConstants.pdfImage,
              ),
              controller.exporter(
                () => RouteManagement.goToexportDetailView(),
                'excel'.tr,
                AssetConstants.excelImage,
              ),
              controller.exporter(
                () => RouteManagement.goToexportDetailView(),
                'word'.tr,
                AssetConstants.docImage,
              ),
              controller.exporter(
                () => RouteManagement.goToexportDetailView(),
                'text'.tr,
                AssetConstants.textImage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
