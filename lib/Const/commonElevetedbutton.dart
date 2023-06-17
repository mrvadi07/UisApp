import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:uisapp/Const/coolor_helper.dart';
import 'package:uisapp/Const/textstyle.dart';
import '../Screens/HomeScreen/form.dart';
import 'commonimage.dart';

ElevatedButton buildElevatedButton(String name, Function() onTap) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors1.blueColor,
      minimumSize: Size(
        90.w,
        6.h,
      ),
    ),
    onPressed: onTap,
    child: Text(name, style: kwhite12),
  );
}

ElevatedButton buildElevatedButton1(String name1, Function() onTap) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors1.blueColor,
      minimumSize: Size(
        10.w,
        3.h,
      ),
    ),
    onPressed: onTap,
    child: Text(
      name1,
      style: TextStyle(
        color: Colors1.whiteColor,
        fontFamily: "Poly",
        fontSize: 8.sp,
      ),
    ),
  );
}

ElevatedButton buildElevatedButton2(String name2, Function() onTap) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors1.blueColor,
      minimumSize: Size(
        28.w,
        6.4.h,
      ),
    ),
    onPressed: onTap,
    child: Text(
      name2,
      style: TextStyle(
        color: Colors1.whiteColor,
        fontFamily: "Poly",
        fontSize: 15.sp,
      ),
    ),
  );
}

ElevatedButton buildElevatedButton3(String name3, Function() onTap) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors1.whiteColor,
      side: BorderSide(
        color: Colors1.blueColor,
        width: 0.22.w,
      ),
      minimumSize: Size(
        28.w,
        6.4.h,
      ),
    ),
    onPressed: onTap,
    child: Text(
      name3,
      style: TextStyle(
        color: Colors1.blueColor,
        fontFamily: "Poly",
        fontSize: 15.sp,
      ),
    ),
  );
}

ElevatedButton esignButton(String name3, Function() onTap) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.sp)),
      backgroundColor: Colors1.whiteColor,
      shadowColor: Colors.grey.shade200,
      elevation: 10,
      minimumSize: Size(
        2.2.w,
        3.5.h,
      ),
    ),
    onPressed: onTap,
    child: Text(
      name3,
      style: TextStyle(
        color: Colors1.blueColor,
        fontFamily: "Poly",
        fontSize: 10.sp,
      ),
    ),
  );
}

InkResponse scanbutton() {
  return InkResponse(
      onTap: () {
        Get.to(const FormUi());
      },
      child: Image.asset(ImagePath.uisImages, scale: 0.30.h));
}
