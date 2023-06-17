import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:uisapp/Const/textstyle.dart';
import 'package:uisapp/Controller/formcon.dart';
import '../../Const/commonElevetedbutton.dart';
import '../../Const/commonmDatePIcker.dart';
import '../../Const/textfield.dart';
import '../../Controller/variable.dart';

class Form1 extends StatefulWidget {
  const Form1({Key? key}) : super(key: key);

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  final _key = GlobalKey<FormState>();

  DateFormat format = DateFormat("dd/MM/yyyy");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CommonTextFieldAuth(
                    // validater: (value) {
                    //   if (value.isEmpty) {
                    //     return const Text("please enter data");
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    commonHintText: "Name of the Deceased",
                    controller: CommonController.deceased,
                    commonKeyboardType: TextInputType.text,
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
                    commonHintText: "Date of Death",
                    controller: CommonController.dateofbdeath,
                    commonKeyboardType: TextInputType.text,
                    commonOnPressed: () {},
                    suffixIcon:
                        AbCd.datepick(context, CommonController.dateofbdeath)),
                SizedBox(height: 2.h),
                CommonTextFieldAuth(
                    // validater: (value) {
                    //   if (value.isEmpty) {
                    //     return const Text("please enter data");
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    commonHintText: "Place of Death",
                    controller: CommonController.placeofdeath,
                    commonKeyboardType: TextInputType.text,
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
                    commonHintText: "Number on the UIS Bracelet",
                    controller: CommonController.numberofuis,
                    commonKeyboardType: TextInputType.text,
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
                    commonHintText: "Date/Time Attached",
                    controller: CommonController.datetimeatteched,
                    commonKeyboardType: TextInputType.text,
                    commonOnPressed: () {}),
                SizedBox(height: 2.9.h),
                Padding(
                  padding: EdgeInsets.only(right: 30.sp),
                  child: Text(
                      "Name of Person Securing the UIS on the Deceased \n(Place the Bracelet on the ankle of the deceased)",
                      style: kblack10),
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
                    commonHintText: "Printed",
                    controller: CommonController.print,
                    commonKeyboardType: TextInputType.text,
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
                    commonHintText: "Signature",
                    controller: CommonController.signature1,
                    commonKeyboardType: TextInputType.text,
                    commonOnPressed: () {}),
                SizedBox(height: 9.h),
                ButtonBar(
                  children: [
                    buildElevatedButton2("Next", () {
                      NextPage.next();
                    }),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
