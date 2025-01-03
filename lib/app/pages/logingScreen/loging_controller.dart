import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/navigators/routes_management.dart';

class LoginController extends GetxController {
  LoginController(this.loginPresenter);

  final LoginPresenter loginPresenter;

  TextEditingController tcUserName = TextEditingController();
  TextEditingController tcPasss = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  void login() {
    if (formKey.currentState!.validate()) {
      RouteManagement.goToaddEmployView();
    }
  }
}
