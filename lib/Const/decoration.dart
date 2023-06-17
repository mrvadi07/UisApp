import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uisapp/Const/coolor_helper.dart';

Decoration bWhiteShade10grey = BoxDecoration(
    color: Colors1.whiteColor,
    borderRadius: BorderRadius.circular(2.sp),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.shade200,
        blurRadius: 10,
        offset: const Offset(10, 5),
      )
    ]);
Decoration bblue = BoxDecoration(
  color: Colors1.blueColor,
  borderRadius: BorderRadius.circular(2.sp),
);
Decoration bWhiteShade100grey1 = BoxDecoration(
  color: Colors.grey.shade100,
  borderRadius: BorderRadius.circular(2.sp),
  border: Border.all(color: Colors.grey.shade300, width: 0.4.w),
);
Decoration uploadImage = const BoxDecoration(
  color: Colors.grey,
  shape: BoxShape.circle,
);
