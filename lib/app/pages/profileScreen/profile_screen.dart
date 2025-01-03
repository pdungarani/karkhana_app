import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/pages/profileScreen/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: ColorsValue.greyColor,
          body: SafeArea(
            child: Padding(
              padding: Dimens.edgeInsets20_30_20_0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "setting_page".tr,
                    style: Styles.blackBold16,
                  ),
                  Dimens.boxHeight10,
                  Container(
                    decoration: BoxDecoration(
                      color: ColorsValue.whiteColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: Dimens.edgeInsets0,
                      shrinkWrap: true,
                      separatorBuilder: (context, index) => const Divider(
                        color: ColorsValue.greyColor,
                        thickness: 2,
                      ),
                      itemBuilder: (context, index) {
                        final element = controller.customProfileList[index];
                        return ListTile(
                          onTap: element.onTap,
                          contentPadding: Dimens.edgeInsets20_5_20_5,
                          leading: element.path,
                          title: Text(
                            element.title,
                            style: Styles.black50022.copyWith(fontSize: 16),
                          ),
                        );
                      },
                      itemCount: controller.customProfileList.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
