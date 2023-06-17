import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uisapp/Controller/variable.dart';

import '../../Const/commonElevetedbutton.dart';
import '../../Const/icon_button.dart';
import '../../Const/textfield.dart';
import '../../Const/textstyle.dart';
import 'package:get/get.dart';

import '../AuthScreen/login.dart';

class ForgotPass3 extends StatefulWidget {
  const ForgotPass3({Key? key}) : super(key: key);

  @override
  State<ForgotPass3> createState() => _ForgotPass3State();
}

class _ForgotPass3State extends State<ForgotPass3> {

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildIconButton(
                      () {
                        Get.back();
                      },
                    ),
                    Text('New Password', style: kblack14w100),
                    SizedBox(width: 10.w),
                  ],
                ),
                SizedBox(height: 3.9.h),
                Text("Set your new password", style: kgrey14),
                SizedBox(height: 2.8.h),
                CommonTextFieldAuth(
                    // validater: (value) {
                    //   if (value.isEmpty) {
                    //     return const Text("please enter data");
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    controller: CommonController.newPassword,
                    commonKeyboardType: TextInputType.number,
                    commonHintText: "Enter your password",
                    commonOnPressed: () {}),
                SizedBox(height: 2.h),
                CommonTextFieldAuth(
                    // validater: (value) {
                    //   if (value.isEmpty) {
                    //     return const Text("please enter data");
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    controller: CommonController.confirmnewPassword,
                    commonKeyboardType: TextInputType.number,
                    commonHintText: "Enter your confirm password",
                    commonOnPressed: () {}),
                SizedBox(height: 8.h),
                buildElevatedButton("Set Password", () {
                  Get.to(const Login());
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
