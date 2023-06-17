import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Screens/ForgotPassword/forgot_password1.dart';
import 'coolor_helper.dart';

InkResponse forgotPassword() {
  return InkResponse(
    onTap: () {
      Get.to(const ForgotPass1());
    },
    child: const Text(
      'Forgot Password?',
      style: TextStyle(color: Colors1.greyColor),
    ),
  );
}
