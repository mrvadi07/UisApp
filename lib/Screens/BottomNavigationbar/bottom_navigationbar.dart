import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:uisapp/Const/coolor_helper.dart';
import 'package:uisapp/Controller/get_controler.dart';
import '../../Const/textstyle.dart';
import '../History/history.dart';
import '../HomeScreen/home.dart';
import '../Notifications/notifications.dart';
import '../Profile/profile.dart';

class BootomNavigation extends StatefulWidget {
  const BootomNavigation({Key? key}) : super(key: key);

  @override
  State<BootomNavigation> createState() => _BootomNavigationState();
}

class _BootomNavigationState extends State<BootomNavigation> {
  int selected = 0;
  List classname = [
    const Home(),
    const Notifications(),
    const History1(),
    const Profiles()
  ];
  GetC name = Get.put(GetC());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetC>(
      builder: (controller) {
        return Scaffold(
          bottomNavigationBar: Container(
            height: 8.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      20.sp,
                    ),
                    topRight: Radius.circular(20.sp)),
                boxShadow: [
                  BoxShadow(
                      color: Colors1.greyColor.withOpacity(0.5),
                      offset: const Offset(-13, 0),
                      blurRadius: 13)
                ]),
            child: SalomonBottomBar(
              selectedItemColor: Colors1.blueColor,
              unselectedItemColor: Colors1.redColor,
              duration: const Duration(milliseconds: 200),
              curve: Curves.linear,
              currentIndex: controller.count,
              onTap: (value) {
                controller.setCount(value);
              },
              items: [
                SalomonBottomBarItem(
                  icon: const Icon(Icons.home),
                  title: Text("Home", style: kblue8),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.notifications_none),
                  title: Text("Notification", style: kblue8),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.history),
                  title: Text("History", style: kblue8),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.person),
                  title: Text("Profile", style: kblue8),
                ),
              ],
            ),
          ),
          body: classname[controller.count],
        );
      },
    );
  }
}
