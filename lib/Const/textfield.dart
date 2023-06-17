import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CommonTextFieldAuth extends StatefulWidget {
  const CommonTextFieldAuth(
      {Key? key,
      required this.controller,
      required this.commonHintText,
      required this.commonKeyboardType,
      required this.commonOnPressed,
      this.suffixIcon,
      this.validater})
      : super(key: key);
  final TextEditingController controller;
  final String commonHintText;
  final TextInputType commonKeyboardType;
  final VoidCallback? commonOnPressed;
  final suffixIcon;
  final validater;

  @override
  State<CommonTextFieldAuth> createState() => _CommonTextFieldAuthState();
}

class _CommonTextFieldAuthState extends State<CommonTextFieldAuth> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validater,
      keyboardType: widget.commonKeyboardType,
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,
        constraints: BoxConstraints(maxWidth: 90.w, maxHeight: 65.h),
        filled: true,
        fillColor: Colors.grey.shade100,
        hintText: widget.commonHintText,
        hintStyle: const TextStyle(
            color: Colors.grey, fontSize: 15, fontFamily: 'poly'),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
    );
  }
}
