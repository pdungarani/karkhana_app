import 'package:flutter/material.dart';
import 'package:flutter_custom_month_picker/flutter_custom_month_picker.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/pages/historyScreen/history_page.dart';

class HistoryDetailScreen extends StatefulWidget {
  const HistoryDetailScreen({super.key});

  @override
  State<HistoryDetailScreen> createState() => _HistoryDetailScreenState();
}

class _HistoryDetailScreenState extends State<HistoryDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HistoryController>(
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
        body: SafeArea(
          child: Padding(
            padding: Dimens.edgeInsets20_20_20_0,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () async {
                    showMonthPicker(context, onSelected: (month, year) {
                      controller.month = month;
                      controller.year = year;
                      controller.update();
                    },
                        initialSelectedMonth: controller.month,
                        initialSelectedYear: controller.year,
                        firstEnabledMonth: 3,
                        lastEnabledMonth: 10,
                        firstYear: 2000,
                        lastYear: 2035,
                        selectButtonText: 'ok'.tr,
                        cancelButtonText: 'cancel'.tr,
                        highlightColor: Colors.purple,
                        textColor: Colors.black,
                        contentBackgroundColor: Colors.white,
                        dialogBackgroundColor: Colors.grey[200]);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorsValue.whiteColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Padding(
                      padding: Dimens.edgeInsets10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.calendar_month),
                          Dimens.boxWidth6,
                          Text(
                            '${controller.month.toString()} ${controller.year.toString()}',
                            style: Styles.blackBold16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Dimens.boxHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "total".tr,
                          style: Styles.black50022.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "₹ -28.375",
                          style: Styles.black50022.copyWith(
                              fontSize: 14, color: ColorsValue.greyColor8888),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "total_withdrawal".tr,
                          style: Styles.black50022.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "₹ 30",
                          style: Styles.black50022.copyWith(
                              fontSize: 14, color: ColorsValue.greyColor8888),
                        ),
                      ],
                    ),
                  ],
                ),
                Dimens.boxHeight10,
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: 7,
                    padding: Dimens.edgeInsetsRight10,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: Dimens.edgeInsetsRight10,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: ColorsValue.whiteColor,
                          ),
                          child: Padding(
                            padding: Dimens.edgeInsets10,
                            child: Row(
                              children: [
                                Text(
                                  '${"a".tr} : ',
                                  style: Styles.black50022.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "27",
                                  style: Styles.black50022.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Dimens.boxHeight10,
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Padding(
                      padding: Dimens.edgeInsetsBottom10,
                      child: Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: ColorsValue.whiteColor,
                        ),
                        child: Padding(
                          padding: Dimens.edgeInsets10,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '${"date".tr} :',
                                            style: Styles.black50022.copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Dimens.boxWidth6,
                                          Text(
                                            "09/12/2024",
                                            style: Styles.black50022.copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    ColorsValue.greyColor8888),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '${"total_diamond".tr} :',
                                            style: Styles.black50022.copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Dimens.boxWidth6,
                                          Text(
                                            "25",
                                            style: Styles.black50022.copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    ColorsValue.greyColor8888),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '${"total_rs".tr} :',
                                            style: Styles.black50022.copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Dimens.boxWidth6,
                                          Text(
                                            "1.375",
                                            style: Styles.black50022.copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    ColorsValue.greyColor8888),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                            color: Colors.red.shade100,
                                            width: 2,
                                          ),
                                          color: ColorsValue.reddishOrangeColor,
                                        ),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon:
                                              const Icon(Icons.delete_forever),
                                        ),
                                      ),
                                      Dimens.boxWidth10,
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                            color: Colors.blue.shade300,
                                            width: 2,
                                          ),
                                          color: Colors.blue.shade100,
                                        ),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.edit),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Dimens.boxHeight10,
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 2,
                                  ),
                                  borderRadius:
                                      BorderRadius.circular(Dimens.ten),
                                ),
                                child: Padding(
                                  padding: Dimens.edgeInsets10,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Center(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: ColorsValue
                                                      .greyBorderColor,
                                                ),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        Dimens.edgeInsets10,
                                                    child: Text(
                                                      'no'.tr,
                                                      style: Styles.black50022
                                                          .copyWith(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Dimens.boxHeight10,
                                            Center(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: ColorsValue
                                                      .greyBorderColor,
                                                ),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        Dimens.edgeInsets10,
                                                    child: Text(
                                                      "a".tr,
                                                      style: Styles.black50022
                                                          .copyWith(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: ColorsValue
                                                                  .greyColor4444),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Dimens.boxWidth10,
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Center(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Dimens.ten),
                                                  color: ColorsValue
                                                      .greyBorderColor,
                                                ),
                                                child: Center(
                                                  child: Padding(
                                                    padding: Dimens
                                                        .edgeInsetsTopt10
                                                        .copyWith(
                                                      bottom: 10,
                                                      left: 4,
                                                      right: 4,
                                                    ),
                                                    child: Text(
                                                      "diamond".tr,
                                                      style: Styles.black50022
                                                          .copyWith(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Dimens.boxHeight10,
                                            Center(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: ColorsValue
                                                      .greyBorderColor,
                                                ),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        Dimens.edgeInsets10,
                                                    child: Text(
                                                      "25",
                                                      style: Styles.black50022
                                                          .copyWith(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: ColorsValue
                                                                  .greyColor4444),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Dimens.boxWidth10,
                                      Flexible(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Center(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: ColorsValue
                                                      .greyBorderColor,
                                                ),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        Dimens.edgeInsets10,
                                                    child: Text(
                                                      "price".tr,
                                                      style: Styles.black50022
                                                          .copyWith(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Dimens.boxHeight10,
                                            Center(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: ColorsValue
                                                      .greyBorderColor,
                                                ),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        Dimens.edgeInsets10,
                                                    child: Text(
                                                      "0.055",
                                                      style: Styles.black50022
                                                          .copyWith(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: ColorsValue
                                                                  .greyColor4444),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Dimens.boxWidth10,
                                      Flexible(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Center(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: ColorsValue
                                                      .greyBorderColor,
                                                ),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        Dimens.edgeInsets10,
                                                    child: Text(
                                                      "total".tr,
                                                      style: Styles.black50022
                                                          .copyWith(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Dimens.boxHeight10,
                                            Center(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: ColorsValue
                                                      .greyBorderColor,
                                                ),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        Dimens.edgeInsets10,
                                                    child: Text(
                                                      "1.375",
                                                      style: Styles.black50022
                                                          .copyWith(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: ColorsValue
                                                                  .greyColor4444),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
