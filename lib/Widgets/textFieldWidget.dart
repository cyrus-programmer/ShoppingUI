import 'package:aqua/utilities/AppConstants.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hinttext;
  final int maxlines;
  final double borderRadius;
  TextFieldWidget(
      {Key? key,
      required this.controller,
      required this.hinttext,
      this.maxlines = 1,
      this.borderRadius = 30})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppConst.photoColor,
        hintText: hinttext,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: AppConst.textColor, width: 1)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: AppConst.textColor, width: 1)),
      ),
    );
  }
}
