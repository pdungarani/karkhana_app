import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/pages/profileScreen/profile_controller.dart';
import 'package:karkhana_app/app/widgets/customTextField.dart';

class AddWithdrawalScreen extends StatelessWidget {
  const AddWithdrawalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) => Scaffold(
        backgroundColor: ColorsValue.greyColor,
        appBar: AppBar(
          title: Text(
            "add_withdrawal".tr,
            style: Styles.black50022.copyWith(fontSize: 18),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
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
                    padding: Dimens.edgeInsets10,
                    child: Column(
                      children: [
                        controller.datePicker(
                          title: 'start_date'.tr,
                          controller: controller.withdrawalDate,
                          validation: 'date_can_be_empty'.tr,
                        ),
                        Dimens.boxHeight10,
                        CustomTextFormField(
                          title: 'withdrawal_amount'.tr,
                          hintText: 'enter_withdrawal_amount'.tr,
                          hintStyle: Styles.black12.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: ColorsValue.blackColor,
                          ),
                          keyboardType: TextInputType.number,
                          controller: controller.withdrawalAmount,
                          validator: (value) => "error_withdrawal_amount".tr,
                        ),
                        Dimens.boxHeight20,
                        CustomButton(
                          height: 45,
                          text: 'save_withdrawal'.tr,
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
