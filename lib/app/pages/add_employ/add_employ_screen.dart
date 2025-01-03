import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/navigators/navigators.dart';
import 'package:karkhana_app/app/pages/add_employ/add_employ_pages.dart';
import 'package:karkhana_app/app/utils/utility.dart';
import 'package:karkhana_app/app/widgets/custom_dilog.dart';

class AddEmployScreen extends StatelessWidget {
  const AddEmployScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddEmployController>(
      builder: (controller) => Scaffold(
        backgroundColor: ColorsValue.whiteColor,
        bottomNavigationBar: Utility.addEmploy.isNotEmpty
            ? Padding(
                padding: Dimens.edgeInsets20_0_20_0.copyWith(bottom: 20),
                child: CustomButton(
                  height: 45,
                  text: "next".tr,
                  onTap: () {
                    RouteManagement.goToBottomBarView();
                  },
                ),
              )
            : const SizedBox(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Text(
            "add_employ".tr,
            style: Styles.blackBold16,
          ),
          actions: [
            Padding(
              padding: Dimens.edgeInsetsRight10,
              child: IconButton(
                onPressed: () async {
                  final result = await showDialog(
                    context: context,
                    builder: (context) {
                      return CustomDialogView(
                        controller: controller,
                      );
                    },
                  );
                  if (result != null && result.toString().isNotEmpty) {
                    Utility.addEmploy.add(
                      AddEmploy(
                        eployName: result.toString(),
                      ),
                    );
                  }
                  controller.update();
                },
                icon: const Icon(Icons.add),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: Utility.addEmploy.length,
            itemBuilder: (context, index) {
              var employs = Utility.addEmploy[index];
              return ListTile(
                title: Text(
                  employs.eployName,
                  style: Styles.black50022.copyWith(fontSize: 16),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Utility.addEmploy.removeAt(index);
                    controller.update();
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red[400],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
