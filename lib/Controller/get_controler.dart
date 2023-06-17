import 'package:get/get.dart';

class GetC extends GetxController {
  int count = 0;
  void setCount(value) {
    count = value;
    update();
  }
}
