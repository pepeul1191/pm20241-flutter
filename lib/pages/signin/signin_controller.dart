import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  TextEditingController dniController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pass1Controller = TextEditingController();
  TextEditingController pass2Controller = TextEditingController();
  RxString message = 'primer mensaje'.obs;
  var messageColor = Colors.white.obs;

  void createAccount() {
    print('falta createAccount');
  }
}
