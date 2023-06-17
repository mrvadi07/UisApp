import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:uisapp/Controller/get_controler.dart';
import 'package:uisapp/Controller/variable.dart';
import '../../Const/commonElevetedbutton.dart';
import '../../Const/decoration.dart';
import '../../Const/icon_button.dart';
import '../../Const/textfield.dart';
import '../../Const/textstyle.dart';

class Profiles extends StatefulWidget {
  const Profiles({Key? key}) : super(key: key);

  @override
  State<Profiles> createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> {
  final _key = GlobalKey<FormState>();

  GetC name = Get.put(GetC());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetC>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: EdgeInsets.only(left: 2.6.w),
              child: buildIconButton(() {
                controller.setCount(2);
              }),
            ),
            title: Text(
              "Profile",
              style: kblack14w100,
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: _key,
                child: Column(
                  children: [
                    SizedBox(height: 2.h),
                    const Divider(),
                    SizedBox(height: 5.h),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 13.h,
                          decoration: uploadImage,
                        ),
                        Positioned(
                          top: 8.h,
                          left: 52.w,
                          child: CircleAvatar(
                            radius: 12.5.sp,
                            child: const Icon(
                              Icons.edit,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 6.h),
                    CommonTextFieldAuth(
                      // validater: (value) {
                      //   if (value.isEmpty) {
                      //     return const Text("please enter data");
                      //   } else {
                      //     return null;
                      //   }
                      // },
                      commonHintText: "Enter your name",
                      controller: CommonController.pName,
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
                      controller: CommonController.pEmail,
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
                      commonHintText: "Enter your Phone Number",
                      controller: CommonController.pNumber,
                      commonKeyboardType: TextInputType.text,
                      commonOnPressed: () {}
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
                      commonHintText: "Enter your Location",
                      controller: CommonController.pLocation,
                      commonKeyboardType: TextInputType.text,
                      commonOnPressed: () {}
                    ),
                    SizedBox(
                      height: 12.h
                    ),
                    buildElevatedButton(
                      "Save",
                      () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
