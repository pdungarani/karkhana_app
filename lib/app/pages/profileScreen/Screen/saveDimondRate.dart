import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/pages/profileScreen/profile_controller.dart';

class SaveDiamondRate extends StatefulWidget {
  const SaveDiamondRate({super.key});

  @override
  State<SaveDiamondRate> createState() => _SaveDiamondRateState();
}

class _SaveDiamondRateState extends State<SaveDiamondRate> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) => Scaffold(
        backgroundColor: ColorsValue.greyColor,
        appBar: AppBar(
          title: Text(
            'add_diamond_rate'.tr,
            style: Styles.black50022.copyWith(fontSize: 18),
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: Dimens.edgeInsets10,
          child: Container(
            decoration: BoxDecoration(
              color: ColorsValue.whiteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20.0,
                ),
              ],
            ),
            child: Padding(
              padding: Dimens.edgeInsets15,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.diamondRate.length,
                    itemBuilder: (context, index) {
                      var element = controller.diamondRate[index];
                      return Padding(
                        padding: Dimens.edgeInsetsTopt10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                width: Get.width,
                                decoration: BoxDecoration(
                                  color: ColorsValue.greyColorEEEE,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: Dimens.edgeInsetVertical13,
                                    child: Text(
                                      element.size,
                                      style: Styles.black50022.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Dimens.boxWidth6,
                            Expanded(
                              child: Container(
                                width: Get.width,
                                decoration: BoxDecoration(
                                  color: ColorsValue.greyColorEEEE,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  controller: TextEditingController(
                                      text: element.rate.toString()),
                                  onChanged: (val) {
                                    element.rate = num.tryParse(val) ?? 0;
                                  },
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Dimens.boxHeight10,
                  Padding(
                    padding: Dimens.edgeInsets10_0_10_0,
                    child: CustomButton(
                      text: "save_diamond_rate".tr,
                      onTap: () {
                        controller.update();
                      },
                      height: 45,
                    ),
                  ),
                  Dimens.boxHeight10,
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
