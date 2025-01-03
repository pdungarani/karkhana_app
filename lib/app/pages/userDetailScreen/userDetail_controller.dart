import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:karkhana_app/app/pages/userDetailScreen/userDetail_pages.dart';

class UserDetailController extends GetxController {
  UserDetailController(this.userDetailPresenter);

  final UserDetailPresenter userDetailPresenter;

  String selectedDate =
      DateFormat('yyyy-MM-dd').format(DateTime.now()).toString();

  TextEditingController aSizeTextEditingController = TextEditingController();
  TextEditingController bSizeTextEditingController = TextEditingController();
  TextEditingController cSizeTextEditingController = TextEditingController();
  TextEditingController dSizeTextEditingController = TextEditingController();
  TextEditingController eSizeTextEditingController = TextEditingController();
  TextEditingController fSizeTextEditingController = TextEditingController();
  TextEditingController gSizeTextEditingController = TextEditingController();
  TextEditingController hSizeTextEditingController = TextEditingController();

  String multiplication = '0';
  num total = 0;

  Widget multiplicationVal(num value1, num value2) {
    num multiplicationVal = value1 * value2;
    total += multiplicationVal;
    multiplication = multiplicationVal.toStringAsFixed(2);
    return Text(
      multiplication,
      maxLines: 2,
      textAlign: TextAlign.center,
    );
  }

  @override
  void dispose() {
    super.dispose();
    aSizeTextEditingController.dispose();
    bSizeTextEditingController.dispose();
    cSizeTextEditingController.dispose();
    dSizeTextEditingController.dispose();
    eSizeTextEditingController.dispose();
    fSizeTextEditingController.dispose();
    gSizeTextEditingController.dispose();
    hSizeTextEditingController.dispose();
  }
}
