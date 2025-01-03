import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/widgets/customTextField.dart';

class Logingscreen extends StatelessWidget {
  const Logingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) => Scaffold(
        backgroundColor: ColorsValue.whiteColor,
        body: Padding(
          padding: Dimens.edgeInsets20_20_20_0,
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                SvgPicture.asset(
                  AssetConstants.dimanod,
                  height: Get.height / 1.89,
                ),
                CustomTextFormField(
                  title: 'user_name'.tr,
                  hintText: 'user_name'.tr,
                  controller: controller.tcUserName,
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  hintStyle: Styles.black12.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: ColorsValue.blackColor,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) return "enter_user_name".tr;
                    return null;
                  },
                ),
                Dimens.boxHeight10,
                CustomTextFormField(
                  title: 'password'.tr,
                  hintText: 'password'.tr,
                  controller: controller.tcPasss,
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  hintStyle: Styles.black12.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: ColorsValue.blackColor,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) return "enter_password".tr;
                    return null;
                  },
                ),
                Dimens.boxHeight20,
                CustomButton(
                  height: Dimens.fifty,
                  text: 'login'.tr,
                  onTap: controller.login,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
