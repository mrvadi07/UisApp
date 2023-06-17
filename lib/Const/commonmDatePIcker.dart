import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AbCd extends GetxController {
  static IconButton datepick(
      BuildContext context, TextEditingController datetime) {
    DateFormat format = DateFormat('dd/MM/yyyy');
    return IconButton(
        icon: const Icon(Icons.calendar_today),
        onPressed: () async {
          await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
            currentDate: DateTime.now(),
          ).then((value) {
            datetime.text = format.format(value!).toString();
          });
        });
  }
}
