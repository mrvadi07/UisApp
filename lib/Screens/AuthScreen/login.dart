import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';
import 'package:uisapp/Api/Model/login_response_model.dart';
import 'package:uisapp/Const/commonimage.dart';
import 'package:uisapp/Screens/AuthScreen/signup.dart';
import '../../Api/Model_View/login_view_model.dart';
import '../../Api/api_response.dart';
import '../../Const/commonElevetedbutton.dart';
import '../../Const/coolor_helper.dart';
import '../../Const/forgotbutton.dart';
import '../../Const/textfield.dart';
import '../../Const/textstyle.dart';
import 'package:get/get.dart';
import '../BottomNavigationbar/bottom_navigationbar.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _key = GlobalKey<FormState>();
  LoginViewModel loginViewModel = Get.put(LoginViewModel());
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Column(
            children: [
              SizedBox(height: 15.h),
              Center(
                child: Image.asset(ImagePath.uisImages,
                    scale: 0.6.sp, fit: BoxFit.cover),
              ),
              SizedBox(height: 6.h),
              Text('Login', style: kyello10w200),
              SizedBox(height: 1.h),
              Text("Welcome back!", style: kblue22w200),
              SizedBox(height: 3.h),
              CommonTextFieldAuth(
                  commonHintText: "Enter your email",
                  commonKeyboardType: TextInputType.emailAddress,
                  commonOnPressed: () {},
                  controller: loginViewModel.emailLogin),
              SizedBox(height: 3.h),
              CommonTextFieldAuth(
                // validater: (value) {
                //   if (value.isEmpty) {
                //     return const Text("please enter data");
                //   } else {
                //     return null;
                //   }
                // },
                commonHintText: "Enter your password",
                commonKeyboardType: TextInputType.number,
                controller: loginViewModel.passwordLogin,
                commonOnPressed: () {},
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: EdgeInsets.only(right: 185.sp),
                child: forgotPassword(),
              ),
              SizedBox(height: 5.h),
              GetBuilder<LoginViewModel>(
                builder: (controller) {
                  if (controller.apiResponseLogin.status == Status.INITIAL ||
                      controller.apiResponseLogin.status == Status.COMPLETE ||
                      controller.apiResponseLogin.status == Status.ERROR) {
                    return buildElevatedButton("Login", () async {
                      await controller.loginViewModel({
                        "email": loginViewModel.emailLogin.text,
                        "password": loginViewModel.passwordLogin.text,
                      });

                      if (controller.apiResponseLogin.status ==
                          Status.COMPLETE) {
                        LoginResponseModel data =
                            controller.apiResponseLogin.data;

                        if (data.status == "success") {
                          if (data.status == "pending") {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('${data.message}')));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('${data.message}')));

                            ///get storage add userid
                            ///navigate to home
                            Get.to(const BootomNavigation());
                          }

                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('${data.message}')));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('${data.message}')));
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
                        ));
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
                      Get.to(const SignUp());
                    },
                    child: Text('Register Now', style: kblue8),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
