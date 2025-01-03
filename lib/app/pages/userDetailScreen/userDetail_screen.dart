import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/pages/userDetailScreen/userDetail_pages.dart';

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserDetailController>(
      builder: (controller) => Scaffold(
        backgroundColor: ColorsValue.greyBorderColor,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: Text(
            Get.arguments ?? 'user_name'.tr,
            style: Styles.blackBold16,
          ),
        ),
        body: Padding(
          padding: Dimens.edgeInsets20_0_20_0,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Dimens.boxHeight10,
                GestureDetector(
                  onTap: () async {
                    final selectedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.tryParse(controller.selectedDate),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2080),
                    );
                    if (selectedDate != null) {
                      String formatted =
                          DateFormat('yyyy-MM-dd').format(selectedDate);
                      controller.selectedDate = formatted;
                      controller.update();
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorsValue.whiteColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding: Dimens.edgeInsets10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.calendar_month),
                          Dimens.boxWidth6,
                          Text(
                            controller.selectedDate,
                            style: Styles.blackBold16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Dimens.boxHeight10,
                Text(
                  'current_month_total'.tr,
                  style: Styles.black50022.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ColorsValue.blueColor,
                  ),
                ),
                Dimens.boxHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'total'.tr,
                          style: Styles.black50022.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '\$ 240',
                          style: Styles.black50022.copyWith(
                              fontSize: 14, color: ColorsValue.greyColor8888),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'withdrawal'.tr,
                          style: Styles.black50022.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '\$ 180',
                          style: Styles.black50022.copyWith(
                              fontSize: 14, color: ColorsValue.greyColor8888),
                        ),
                      ],
                    )
                  ],
                ),
                Dimens.boxHeight20,
                Container(
                  decoration: BoxDecoration(
                    color: ColorsValue.whiteColor,
                    borderRadius: BorderRadius.circular(Dimens.fourteen),
                  ),
                  child: Padding(
                    padding: Dimens.edgeInsetsLeft10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Dimens.boxHeight5,
                        Table(
                          columnWidths: const {
                            0: FractionColumnWidth(.18),
                            1: FractionColumnWidth(.28),
                            2: FractionColumnWidth(.3),
                            3: FractionColumnWidth(.23),
                          },
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: [
                            TableRow(
                              children: [
                                Text(
                                  "${'no'.tr} ",
                                  textAlign: TextAlign.center,
                                  style: Styles.black50022.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "price".tr,
                                  textAlign: TextAlign.center,
                                  style: Styles.black50022.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "diamond".tr,
                                  textAlign: TextAlign.center,
                                  style: Styles.black50022.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "total".tr,
                                  textAlign: TextAlign.center,
                                  style: Styles.black50022.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            customTableView(
                              'A',
                              '0.01 - 0.10',
                              '0.04',
                              controller.aSizeTextEditingController,
                              controller,
                            ),
                            customTableView(
                              'B',
                              '0.11 - 0.20',
                              '0.06',
                              controller.bSizeTextEditingController,
                              controller,
                            ),
                            customTableView(
                              'C',
                              '0.21 - 0.30',
                              '0.07',
                              controller.cSizeTextEditingController,
                              controller,
                            ),
                            customTableView(
                              'D',
                              '0.31 - 0.40',
                              '0.08',
                              controller.dSizeTextEditingController,
                              controller,
                            ),
                            customTableView(
                              'E',
                              '0.41 - 0.50',
                              '0.09',
                              controller.eSizeTextEditingController,
                              controller,
                            ),
                            customTableView(
                              'F',
                              '0.51 - 0.60',
                              '1.0',
                              controller.fSizeTextEditingController,
                              controller,
                            ),
                            customTableView(
                              'G',
                              '0.61 - 0.70',
                              '1.04',
                              controller.gSizeTextEditingController,
                              controller,
                            ),
                            customTableView(
                              'H',
                              '0.71 - 0.80',
                              '5',
                              controller.hSizeTextEditingController,
                              controller,
                            ),
                            TableRow(
                              children: [
                                const SizedBox(),
                                const SizedBox(),
                                Padding(
                                  padding: Dimens.edgeInsets10,
                                  child: Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: ColorsValue.greyColor,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Padding(
                                        padding: Dimens.edgeInsets10,
                                        child: Text(
                                          "${'total'.tr} : ",
                                          style: Styles.blackBold16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: ColorsValue.greyColor,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: Dimens.edgeInsets20_10_20_10,
                                      child: const Text("4"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: CustomButton(
                            text: 'submit'.tr,
                            onTap: () {},
                            height: Dimens.fourtyFive,
                          ),
                        ),
                        Dimens.boxHeight20,
                      ],
                    ),
                  ),
                ),
                Dimens.boxHeight20,
              ],
            ),
          ),
        ),
      ),
    );
  }

  TableRow customTableView(
    String size,
    String defaltsize,
    String price,
    TextEditingController textEditingController,
    UserDetailController controller,
  ) {
    var intSize = double.tryParse(price);
    return TableRow(
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: ColorsValue.greyColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: Dimens.edgeInsets05_10_05_10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    size,
                    style: Styles.black50022.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    defaltsize,
                    style: Styles.black50022.copyWith(
                      fontSize: 10,
                      color: ColorsValue.greyColor8888,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: ColorsValue.greyColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: Dimens.edgeInsets20_10_20_10,
              child: Text(
                price,
                style: Styles.blackBold12.copyWith(fontSize: 14),
              ),
            ),
          ),
        ),
        Padding(
          padding: Dimens.edgeInsetsTopt10,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: ColorsValue.greyColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.all(Dimens.four),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller: textEditingController,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(4),
                  ],
                  onChanged: (val) {
                    controller.update();
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 6,
                    ),
                    hintText: 'enter_diamond_number'.tr,
                    hintStyle: Styles.blackBold12
                        .copyWith(color: ColorsValue.greyColor9195A8),
                  ),
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: ColorsValue.greyColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: Dimens.edgeInsets20_10_20_10,
              child: controller.multiplicationVal(
                  intSize ?? 0, int.tryParse(textEditingController.text) ?? 0),
            ),
          ),
        ),
      ],
    );
  }
}
