import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/pages/profileScreen/profile_controller.dart';
import 'package:karkhana_app/app/theme/theme.dart';
import 'package:karkhana_app/app/utils/utility.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) => Scaffold(
        backgroundColor: ColorsValue.greyBorderColor,
        appBar: AppBar(
          title: Text(
            "change_language".tr,
            style: Styles.black50022.copyWith(fontSize: 18),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: Dimens.edgeInsets10,
            child: Column(
              children: [
                Card(
                  color: Colors.white,
                  shape: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: ColorsValue.transparent),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: ListView.builder(
                    itemCount: controller.language.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var element = controller.language[index];
                      return ListTile(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Colors.transparent, width: 1),
                          borderRadius: index == 0
                              ? const BorderRadius.only(
                                  topLeft: Radius.circular(22),
                                  topRight: Radius.circular(22))
                              : index == 2
                                  ? const BorderRadius.only(
                                      bottomLeft: Radius.circular(22),
                                      bottomRight: Radius.circular(22))
                                  : BorderRadius.zero,
                        ),
                        tileColor: index == controller.selectedIndex
                            ? Colors.blue
                            : null,
                        selectedTileColor: ColorsValue.blackColor,
                        onTap: () {
                          controller.selectedIndex = index;
                          Utility.updateLanguage(
                            Locale(element.languageCode),
                          );
                          Utility.setUpdatelanguage(element.languageCode);

                          controller.update();
                        },
                        title: Center(
                          child: Text(
                            element.languageName,
                            style: Styles.black50022.copyWith(fontSize: 16),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
