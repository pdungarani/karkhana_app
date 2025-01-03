import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/navigators/navigators.dart';
import 'package:karkhana_app/app/pages/profileScreen/profile_page.dart';
import 'package:karkhana_app/app/theme/theme.dart';
import 'package:karkhana_app/app/utils/utility.dart';
import 'package:karkhana_app/app/widgets/customTextField.dart';

class ProfileController extends GetxController {
  ProfileController(this.profilePresenter);

  final ProfilePresenter profilePresenter;

  int groupValue = 1;
  DateTime date = DateTime.now();
  TextEditingController withdrawalDate = TextEditingController();
  TextEditingController withdrawalAmount = TextEditingController();
  int selectedIndex = 0;

  List<CreateCustomList> customProfileList = [
    CreateCustomList(
      path: const Icon(Icons.diamond),
      title: 'save_diamond_rate'.tr,
      onTap: () => RouteManagement.goToSaveDiamondRateView(),
    ),
    CreateCustomList(
      path: const Icon(Icons.add_home_work_outlined),
      title: 'add_withdrawal'.tr,
      onTap: () => RouteManagement.goToWithdrawalView(),
    ),
    CreateCustomList(
      path: const Icon(Icons.language),
      title: 'language'.tr,
      onTap: () => RouteManagement.goToLanguageView(),
    ),
    CreateCustomList(
      path: const Icon(Icons.import_export),
      title: 'export_data'.tr,
      onTap: () => RouteManagement.goToexportDataView(),
    ),
    CreateCustomList(
      path: const Icon(Icons.folder_open),
      title: 'my_export'.tr,
      onTap: () => RouteManagement.goTomyExportView(),
    ),
    CreateCustomList(
      path: const Icon(Icons.share),
      title: 'share_hira_dairy'.tr,
      onTap: () {},
    ),
    CreateCustomList(
      path: const Icon(Icons.star),
      title: 'rate_us'.tr,
      onTap: () {},
    ),
  ];

  List<CustomLanguage> language = [
    CustomLanguage(index: 0, languageName: 'English', languageCode: 'en'),
    CustomLanguage(index: 1, languageName: 'ગુજરાતી', languageCode: 'gu'),
    CustomLanguage(index: 2, languageName: 'हिंदी', languageCode: 'hi'),
  ];

  List<CustomDimondRate> diamondRate = [
    CustomDimondRate(rate: 0.04, size: 'a'.tr),
    CustomDimondRate(rate: 0.07, size: 'b'.tr),
    CustomDimondRate(rate: 0.12, size: 'c'.tr),
    CustomDimondRate(rate: 0.45, size: 'd'.tr),
    CustomDimondRate(rate: 0.9, size: 'e'.tr),
    CustomDimondRate(rate: 1.4, size: 'f'.tr),
    CustomDimondRate(rate: 2.33, size: 'g'.tr),
    CustomDimondRate(rate: 5, size: 'h'.tr),
  ];

  Widget datePicker({
    required String title,
    required TextEditingController controller,
    required String validation,
  }) {
    return CustomTextFormField(
      title: title,
      contentPadding: Dimens.edgeInsets10,
      readOnly: true,
      controller: controller,
      hintText: 'select_date'.tr,
      hintStyle: Styles.black12.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: ColorsValue.blackColor,
      ),
      onTap: () async {
        final selectedDate = await showDatePicker(
          context: Get.context!,
          initialDate: date,
          firstDate: DateTime(2000),
          lastDate: DateTime(2080),
        );
        if (selectedDate != null) {
          date = selectedDate;
          controller.text = date.toString().offerDateFormat;
          update();
        }
      },
      suffixIcon: const Icon(Icons.calendar_month_outlined),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: ColorsValue.greyColor9195A8),
      ),
      style: Styles.black12,
      validator: (value) {
        if (value != null) {
          if (value.isEmpty) {
            return validation;
          }
          return '';
        }
        return null;
      },
    );
  }

  Widget exporter(final VoidCallback? onTap, String title, String icons) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        onTap: onTap,
        title: Text(
          title,
          style: Styles.black50022.copyWith(fontSize: 14),
        ),
        leading: Image(
          image: AssetImage(icons),
          height: 35,
        ),
      ),
    );
  }
}
