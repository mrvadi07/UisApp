import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonController extends GetxController {
  ///login
  static final emailcontroller = TextEditingController();
  static final passwordcontroller = TextEditingController();

  ///signup
  // static final namecontroller = TextEditingController();
  // static final email = TextEditingController();
  // static final password = TextEditingController();
  // static final confirmPassword = TextEditingController();

  ///Forgot Password1
  // static final email1controller = TextEditingController();
  // static final mobileNumber = TextEditingController();

  ///Forgot Password2
  static final newPassword = TextEditingController();
  static final confirmnewPassword = TextEditingController();

  ///form1
  static final deceased = TextEditingController();
  static final dateofbdeath = TextEditingController();
  static final placeofdeath = TextEditingController();
  static final numberofuis = TextEditingController();
  static final datetimeatteched = TextEditingController();
  static final print = TextEditingController();
  static final signature1 = TextEditingController();

  ///form2
  static final printed = TextEditingController();
  static final signature2 = TextEditingController();
  static final datetime2 = TextEditingController();

  static final printed3 = TextEditingController();
  static final signature3 = TextEditingController();
  static final datetime3 = TextEditingController();

  ///form3
  static final printed4 = TextEditingController();
  static final relestionship = TextEditingController();
  static final signature4 = TextEditingController();
  static final datetime4 = TextEditingController();

  static final printed5 = TextEditingController();
  static final signature5 = TextEditingController();
  static final datetime5 = TextEditingController();

  ///profile
  static final pName = TextEditingController();
  static final pEmail = TextEditingController();
  static final pNumber = TextEditingController();
  static final pLocation = TextEditingController();

  ///pageview
  static PageController controller = PageController();
}
