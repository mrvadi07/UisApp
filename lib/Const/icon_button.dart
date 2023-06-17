import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uisapp/Const/coolor_helper.dart';

import '../Controller/variable.dart';

IconButton buildIconButton(Function() onTap) {
  return IconButton(
    onPressed: onTap,
    icon: const Icon(
      Icons.arrow_back_ios,
      size: 30,
      color: Colors1.blackColor,
    ),
  );
}
