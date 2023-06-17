import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:uisapp/Api/Model_View/signup_view_model.dart';
import 'package:uisapp/Api/api_response.dart';
import 'package:uisapp/Const/coolor_helper.dart';
import 'package:uisapp/Screens/AuthScreen/login.dart';
import '../../Api/Model/signup_response_model.dart';
import '../../Const/commonElevetedbutton.dart';
import '../../Const/commonimage.dart';
import '../../Const/textfield.dart';
import '../../Const/textstyle.dart';
import '../BottomNavigationbar/bottom_navigationbar.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _key = GlobalKey<FormState>();
  SignUpViewModel signUpViewModel = Get.put(SignUpViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Column(
            children: [
              SizedBox(height: 13.h),
              Center(
                  child: Image.asset(ImagePath.uisImages,
                      scale: 0.6.sp, fit: BoxFit.cover)),
              SizedBox(height: 3.h),
              Text("Sign up", style: kblue16w200),
              SizedBox(height: 4.h),
              CommonTextFieldAuth(
                // validater: (value) {
                //   if (value.isEmpty) {
                //     return const Text("please enter data");
                //   } else {
                //     return null;
                //   }
                // },
                commonHintText: "Enter your name",
                controller: signUpViewModel.nameSignUp,
                commonKeyboardType: TextInputType.text,
                commonOnPressed: () {},
              ),
              SizedBox(height: 2.h),
              CommonTextFieldAuth(
                  // validater: (value) {
                  //   if (value.isEmpty) {
                  //     return const Text("please enter data");
                  //   } else {
                  //     return null;
                  //   }
                  // },
                  commonHintText: "Enter your email",
                  controller: signUpViewModel.emailSignUp,
                  commonKeyboardType: TextInputType.emailAddress,
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
                  commonHintText: "Enter your password",
                  controller: signUpViewModel.passwordSignUp,
                  commonKeyboardType: TextInputType.number,
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
                  commonHintText: "Enter your confirm password",
                  controller: signUpViewModel.confirmPasswordSignUp,
                  commonKeyboardType: TextInputType.number,
                  commonOnPressed: () {}),
              SizedBox(height: 5.5.h),
              GetBuilder<SignUpViewModel>(
                builder: (controller) {
                  if (controller.apiResponse.status == Status.INITIAL ||
                      controller.apiResponse.status == Status.COMPLETE ||
                      controller.apiResponse.status == Status.ERROR) {
                    return buildElevatedButton("SignUp", () async {
                      await controller.signUpViewModel({
                        "name": signUpViewModel.nameSignUp.text,
                        "email": signUpViewModel.emailSignUp.text,
                        "password": signUpViewModel.passwordSignUp.text,
                        "cpassword": signUpViewModel.confirmPasswordSignUp.text,
                      });

                      if (controller.apiResponse.status == Status.COMPLETE) {
                        SignUpResponseModel data = controller.apiResponse.data;

                        if (data.status == "success") {
                          if (data.data.status == "pending") {
                            Fluttertoast.showToast(msg: data.message);
                            // ScaffoldMessenger.of(context).showSnackBar(
                            //     SnackBar(content: Text('${data.message}')));
                            buildDefaultDialog();
                          } else {
                            Fluttertoast.showToast(msg: data.message);

                            ///get storage add userid
                            ///navigate to home
                          }

                          Fluttertoast.showToast(msg: data.message);
                        } else {
                          Fluttertoast.showToast(msg: data.message);
                        }
                      }
                    });
                  } else {
                    return Container(
                      height: 6.h,
                      width: 90.w,
                      color: Colors1.blueColor,
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: Colors1.whiteColor,
                        ),
                      ),
                    );
                  }
                },
              ),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: kgrey8),
                  SizedBox(width: 1.w),
                  TextButton(
                    onPressed: () {
                      Get.to(const Login());
                    },
                    child: Text('Login Now', style: kblue8),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> buildDefaultDialog() {
    return Get.defaultDialog(
      title: "",
      middleText: "",
      actions: [
        SizedBox(height: 30.sp),
        Text(
          textAlign: TextAlign.center,
          "Please wait until"
          "\nadmin approve"
          "\nyour profile",
          style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontFamily: "Poly",
              fontWeight: FontWeight.w500),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 80.sp, vertical: 30.sp),
          child: buildElevatedButton(
            "OK",
            () {
              Get.to(const BootomNavigation());
            },
          ),
        ),
      ],
    );
  }
}
