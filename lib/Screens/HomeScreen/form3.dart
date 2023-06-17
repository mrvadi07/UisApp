import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hand_signature/signature.dart';
import 'package:sizer/sizer.dart';
import 'package:uisapp/Const/textstyle.dart';
import '../../Const/commonElevetedbutton.dart';
import '../../Const/commonmDatePIcker.dart';
import '../../Const/decoration.dart';
import '../../Const/textfield.dart';
import '../../Controller/formcon.dart';
import '../../Controller/variable.dart';

class Form3 extends StatefulWidget {
  const Form3({Key? key}) : super(key: key);

  @override
  State<Form3> createState() => _Form3State();
}

class _Form3State extends State<Form3> {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 30.sp),
                  child: Text(
                      "Name of person entitled to receive the cremated \nremalns",
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
                    controller: CommonController.printed4,
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
                    commonHintText: "Relationship",
                    controller: CommonController.relestionship,
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
                    controller: CommonController.signature4,
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
                    commonHintText: "Date/Time",
                    controller: CommonController.datetime4,
                    commonKeyboardType: TextInputType.text,
                    commonOnPressed: () {},
                    suffixIcon:
                        AbCd.datepick(context, CommonController.datetime4)),
                SizedBox(height: 4.h),
                Padding(
                  padding: EdgeInsets.only(right: 55.sp),
                  child: Text("Name of person releasing cremated remains",
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
                    controller: CommonController.printed5,
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
                    controller: CommonController.signature5,
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
                    commonHintText: "Date/Time",
                    controller: CommonController.datetime5,
                    commonKeyboardType: TextInputType.text,
                    commonOnPressed: () {},
                    suffixIcon:
                        AbCd.datepick(context, CommonController.datetime5)),
                SizedBox(height: 2.9.h),
                Padding(
                  padding: EdgeInsets.only(right: 200.sp),
                  child: Text("Upload Photo", style: kblack10),
                ),
                SizedBox(height: 2.h),
                Container(
                    width: 90.w, height: 6.h, decoration: bWhiteShade100grey1),
                SizedBox(height: 2.4.h),
                Padding(
                  padding: EdgeInsets.only(right: 210.sp),
                  child: esignButton("Esign", () {
                    buildDefaultDialog();
                  }),
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    buildElevatedButton3("Pervious", () {
                      NextPage.previous();
                    }),
                    const Spacer(),
                    buildElevatedButton2("Submit", () {}),
                  ],
                ),
                SizedBox(height: 2.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<dynamic> buildDefaultDialog() {
  return Get.generalDialog(
    pageBuilder: (context, animation, secondaryAnimation) {
      final control = HandSignatureControl(
          threshold: 3.0, smoothRatio: 0.65, velocityRange: 2.0);
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 2.h),
            Container(
                height: 19.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: HandSignature(
                    control: control,
                    color: Colors.blueGrey,
                    type: SignatureDrawType.shape)),
            SizedBox(height: 2.h),
            buildElevatedButton2("Save", () {
              Get.back();
            }),
            SizedBox(height: 2.h),
            esignButton(
              "Redo",
              () {
                control.clear();
              },
            ),
            SizedBox(height: 2.h),
          ],
        ),
      );
    },
  );
}
