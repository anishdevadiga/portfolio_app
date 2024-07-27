import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  final TextEditingController name = TextEditingController();
  final TextEditingController password = TextEditingController();

  void submitForm() {
    if (name.text == "project" && password.text == "project") {
    } else if (name.text == "email" && password.text == "email") {

    } else {
      Get.snackbar('Error', 'Invalid username or password');
    }
  }

  @override
  void onClose() {
    name.dispose();
    password.dispose();
    super.onClose();
  }
}
