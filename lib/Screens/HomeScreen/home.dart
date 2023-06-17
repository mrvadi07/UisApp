import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uisapp/Const/commonimage.dart';
import 'package:uisapp/Const/coolor_helper.dart';
import 'package:uisapp/Controller/get_controler.dart';
import '../../Const/commonElevetedbutton.dart';
import '../../Const/decoration.dart';
import '../../Const/textstyle.dart';
import 'package:get/get.dart';

import 'form.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GetC name = Get.put(GetC());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetC>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 6.h,
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: scanbutton(),
            leading: Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                    controller.update();
                  },
                  icon: const Icon(Icons.menu, color: Colors1.blackColor),
                );
              },
            ),
          ),
          drawer: const Drawer(),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 1.h),
                  SizedBox(height: 2.h),
                  Center(
                    child: InkResponse(
                      onTap: () {
                        Get.to(const FormUi());
                      },
                      child: Image.asset(ImagePath.scanImage, scale: 0.5.sp),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text('Notice', style: kblack14w100),
                  SizedBox(height: 2.h),
                  Container(
                    height: 6.h,
                    width: 90.w,
                    decoration: bWhiteShade10grey,
                    child: Row(
                      children: [
                        SizedBox(width: 3.w),
                        Text('Lorem ipsum dolor sit amet, consectetur',
                            style: kgrey8),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Container(
                    height: 6.h,
                    width: 90.w,
                    decoration: bWhiteShade10grey,
                    child: Row(
                      children: [
                        SizedBox(width: 3.w),
                        Text('Lorem ipsum dolor sit amet, consectetur',
                            style: kgrey8),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
