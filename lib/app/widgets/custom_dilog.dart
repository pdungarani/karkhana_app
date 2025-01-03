import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/pages/add_employ/add_employ_controller.dart';
import 'package:karkhana_app/app/widgets/customTextField.dart';

class CustomDialogView extends StatefulWidget {
  CustomDialogView({super.key, required this.controller});

  AddEmployController controller;

  @override
  State<CustomDialogView> createState() => _CustomDialogViewState();
}

class _CustomDialogViewState extends State<CustomDialogView> {
  TextEditingController employName = TextEditingController();

  GlobalKey<FormState> addEmployGlobleKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.six),
      ),
      backgroundColor: ColorsValue.whiteColor,
      insetPadding: Dimens.edgeInsets20,
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Dimens.boxHeight10,
              showDateField(),
              Dimens.boxHeight10,
            ],
          ),
        ),
      ),
    );
  }

  Widget showDateField() {
    return Form(
      key: addEmployGlobleKey,
      child: Padding(
        padding: Dimens.edgeInsetsSymmetricH20,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            addEmploy(
              title: 'Employ Name',
              controller: employName,
              validation: "Employ Can't Be Empty",
            ),
            Dimens.boxHeight10,
            CustomButton(
              height: 45,
              text: 'Add Employ',
              onTap: () {
                (addEmployGlobleKey.currentState?.validate() ?? false)
                    ? Get.back(result: employName.text)
                    : null;
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget addEmploy({
    required String title,
    required TextEditingController controller,
    required String validation,
  }) {
    return CustomTextFormField(
      title: title,
      autoValidateMode: AutovalidateMode.onUserInteraction,
      contentPadding: Dimens.edgeInsets10,
      controller: controller,
      hintText: 'Enter Employ Name',
      errorStyle: Styles.black12.copyWith(
        color: Colors.red,
      ),
      hintStyle: Styles.black12
          .copyWith(color: ColorsValue.blackColor.withOpacity(0.4)),
      // style: Styles.black12,
      validator: (value) {
        if (value!.isEmpty) {
          return validation;
        }
      },
    );
  }
}
