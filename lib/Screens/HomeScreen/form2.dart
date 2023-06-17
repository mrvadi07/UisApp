import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:uisapp/Const/textstyle.dart';
import 'package:uisapp/Controller/formcon.dart';
import 'package:uisapp/Controller/get_controler.dart';
import '../../Const/commonElevetedbutton.dart';
import '../../Const/commonmDatePIcker.dart';
import '../../Const/textfield.dart';
import '../../Controller/variable.dart';
import 'package:get/get.dart';

class Form2 extends StatefulWidget {
  const Form2({Key? key}) : super(key: key);

  @override
  State<Form2> createState() => _Form2State();
}

class _Form2State extends State<Form2> {
  final _key = GlobalKey<FormState>();

  DateFormat format = DateFormat('dd/MM/yyyy');
  GetC name = Get.put(GetC());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetC>(
      builder: (controller) {
        return SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 55.sp),
                    child: Text(
                        "Name of Funeral/Other Representative Taking \nCustody of the Deceased",
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
                      controller: CommonController.printed,
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
                      controller: CommonController.signature2,
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
                      controller: CommonController.datetime2,
                      commonKeyboardType: TextInputType.text,
                      commonOnPressed: () {},
                      suffixIcon: AbCd.datepick(
                          context, CommonController.dateofbdeath)),
                  SizedBox(height: 3.h),
                  Padding(
                    padding: EdgeInsets.only(right: 50.sp),
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
                      controller: CommonController.printed3,
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
                      controller: CommonController.signature3,
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
                      controller: CommonController.datetime3,
                      commonKeyboardType: TextInputType.text,
                      commonOnPressed: () {},
                      suffixIcon:
                          AbCd.datepick(context, CommonController.datetime3)),
                  SizedBox(height: 9.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp),
                    child: Row(
                      children: [
                        buildElevatedButton3("Pervious", () {
                          NextPage.previous();
                        }),
                        const Spacer(),
                        buildElevatedButton2("Next", () {
                          NextPage.next();
                        }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
