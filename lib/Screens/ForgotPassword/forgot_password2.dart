import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';
import 'package:uisapp/Const/coolor_helper.dart';
import '../../Const/commonElevetedbutton.dart';
import '../../Const/icon_button.dart';
import '../../Const/textstyle.dart';
import 'package:get/get.dart';
import 'forgot_password3.dart';

class ForgotPass2 extends StatefulWidget {
  const ForgotPass2({Key? key}) : super(key: key);

  @override
  State<ForgotPass2> createState() => _ForgotPass2State();
}

class _ForgotPass2State extends State<ForgotPass2> {
  TextEditingController otpController = TextEditingController();
  String? otpCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildIconButton(() {
                    Get.back();
                  }),
                  Text('Verifying Password', style: kblack14w100),
                  SizedBox(width: 10.w),
                ],
              ),
              SizedBox(height: 3.9.h),
              Text("We sent an otp to your mobile number \n5269874152",
                  style: kgrey14),
              SizedBox(height: 3.5.h),
              SizedBox(
                height: 8.h,
                child: Pinput(
                  controller: otpController,
                  length: 6,
                  showCursor: true,
                  defaultPinTheme: PinTheme(
                    width: 20.5.w,
                    height: 11.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.sp),
                        border:
                            Border.all(color: Colors1.blueColor, width: 1.sp)),
                    textStyle:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                  ),
                  onSubmitted: (value) {
                    setState(() {
                      otpCode = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not yet get?', style: kgrey11),
                  SizedBox(width: 2.w),
                  Text('Resend OTP', style: kblue11),
                ],
              ),
              SizedBox(height: 8.h),
              buildElevatedButton(
                "Verify",
                () {
                  Get.to(const ForgotPass3());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
