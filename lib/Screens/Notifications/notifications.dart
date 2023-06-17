import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:uisapp/Const/coolor_helper.dart';
import 'package:uisapp/Controller/get_controler.dart';
import '../../Const/decoration.dart';
import '../../Const/icon_button.dart';
import '../../Const/textstyle.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
                controller.setCount(0);
              }),
            ),
            title: Text(
              "Notifications",
              style: kblack14w100,
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Column(
                    children: List.generate(
                      8,
                      (index) => Container(
                        height: 8.h,
                        width: 90.w,
                        margin: EdgeInsets.symmetric(vertical: 0.8.h),
                        decoration: bWhiteShade10grey,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.5.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 3.8.h,
                                width: 7.6.w,
                                decoration: bblue,
                                child: Icon(
                                  Icons.notifications_none,
                                  size: 20.sp,
                                  color: Colors1.whiteColor,
                                ),
                              ),
                              Text(
                                  'Lorem Ipsum is simply dummy text of the \next of theext of the ',
                                  style: kgrey8.copyWith(fontSize: 9.sp)),
                              SizedBox(height: 1.h),
                              Text(
                                "2min",
                                style: kgrey8,
                              ),
                            ],
                          ),
                        ),
                      ),
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
