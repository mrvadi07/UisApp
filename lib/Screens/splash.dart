import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:uisapp/Const/commonimage.dart';
import 'package:get/get.dart';
import 'package:uisapp/Screens/BottomNavigationbar/bottom_navigationbar.dart';

import 'AuthScreen/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final box = GetStorage();
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        Get.to(box.read('userId') == null
            ? const Login()
            : const BootomNavigation());
      },
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(ImagePath.uisImages, fit: BoxFit.cover),
      ),
    );
  }
}
