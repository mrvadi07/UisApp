import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:uisapp/Controller/variable.dart';

class NextPage extends GetxController {
  static next() {
    CommonController.controller.nextPage(
      duration: const Duration(
        milliseconds: 5,
      ),
      curve: Curves.bounceIn,
    );
  }

  static previous() {
    CommonController.controller.previousPage(
      duration: const Duration(milliseconds: 5),
      curve: Curves.bounceOut,
    );
  }
}
