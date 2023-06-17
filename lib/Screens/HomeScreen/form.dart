import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:uisapp/Controller/get_controler.dart';
import 'package:uisapp/Controller/variable.dart';
import 'package:uisapp/Screens/BottomNavigationbar/bottom_navigationbar.dart';
import 'package:uisapp/Screens/HomeScreen/form3.dart';
import '../../Const/icon_button.dart';
import '../../Const/textstyle.dart';
import 'form1.dart';
import 'form2.dart';

class FormUi extends StatefulWidget {
  const FormUi({Key? key}) : super(key: key);

  @override
  State<FormUi> createState() => _FormUiState();
}

class _FormUiState extends State<FormUi> {
  int selected = 0;
  List pageName = [const Form1(), const Form2(), const Form3()];
  GetC name = Get.put(GetC());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetC>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildIconButton(() {
                        Get.to(const BootomNavigation());
                      }),
                      Text('Form', style: kblack14w100),
                      selected == 2
                          ? Image.asset(
                              'assets/images/Group 52.png',
                              scale: 0.5.sp,
                            )
                          : SizedBox(
                              width: 11.w,
                            ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Container(
                        height: 0.4.h,
                        width: 28.w,
                        margin: EdgeInsets.symmetric(horizontal: 1.h),
                        color: selected >= index
                            ? Colors.indigo.withOpacity(0.8)
                            : Colors.grey.withOpacity(0.4)),
                  ),
                ),
                SizedBox(height: 3.h),
                Expanded(
                  child: PageView.builder(
                    controller: CommonController.controller,
                    physics: const ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (value) {
                      selected = value;
                      controller.update();
                    },
                    itemCount: pageName.length,
                    itemBuilder: (context, index) {
                      return pageName[index];
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
