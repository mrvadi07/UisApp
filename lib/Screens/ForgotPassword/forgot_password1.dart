import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uisapp/Api/Model_View/login_view_model.dart';
import 'package:uisapp/Controller/variable.dart';
import '../../Const/commonElevetedbutton.dart';
import '../../Const/icon_button.dart';
import '../../Const/textfield.dart';
import '../../Const/textstyle.dart';
import 'package:get/get.dart';
import 'forgot_password2.dart';

class ForgotPass1 extends StatefulWidget {
  const ForgotPass1({Key? key}) : super(key: key);

  @override
  State<ForgotPass1> createState() => _ForgotPass1State();
}

class _ForgotPass1State extends State<ForgotPass1> {
  final _key = GlobalKey<FormState>();

  LoginViewModel loginViewModel = Get.put(LoginViewModel());

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
                    Text('Forgot Password', style: kblack14w100),
                    SizedBox(width: 9.5.w),
                  ],
                ),
                SizedBox(height: 3.9.h),
                Text(
                    "Enter your email or phone number & \nwill send you instruction on hoe to reset \nit.",
                    style: kgrey14),
                SizedBox(height: 2.8.h),
                Text('Email', style: kblack10),
                SizedBox(height: 2.h),
                CommonTextFieldAuth(
                    // validater: (value) {
                    //   if (value.isEmpty) {
                    //     return const Text("please enter data");
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    controller: loginViewModel.emailLogin,
                    commonKeyboardType: TextInputType.emailAddress,
                    commonHintText: "Enter your email",
                    commonOnPressed: () {}),
                SizedBox(height: 3.8.h),
                Center(child: Text('or', style: kgrey11)),
                SizedBox(height: 3.8.h),
                Text('Mobile Number', style: kblack10),
                SizedBox(height: 2.h),
                CommonTextFieldAuth(
                    // validater: (value) {
                    //   if (value.isEmpty) {
                    //     return const Text("please enter data");
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    controller: loginViewModel.passwordLogin,
                    commonKeyboardType: TextInputType.emailAddress,
                    commonHintText: "Enter your email",
                    commonOnPressed: () {}),
                SizedBox(height: 8.h),
                buildElevatedButton(
                  "Sent",
                  () {
                    Get.to(const ForgotPass2());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
