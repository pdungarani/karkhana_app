import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/navigators/navigators.dart';
import 'package:karkhana_app/app/utils/utility.dart';

import 'history_page.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HistoryController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: ColorsValue.greyColor,
          appBar: AppBar(
            title: Text(
              'history_of_employs'.tr,
              style: Styles.blackBold16,
            ),
          ),
          body: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: Utility.addEmploy.length,
            itemBuilder: (context, index) {
              var employ = Utility.addEmploy[index];
              return ListTile(
                title: Text(
                  employ.eployName,
                  style: Styles.black50022.copyWith(fontSize: 16),
                ),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  RouteManagement.goToHistoryDetailView(employ.eployName);
                },
              );
            },
          ),
        );
      },
    );
  }
}
