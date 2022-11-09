import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final double height;
  const ButtonWidget(
      {Key? key,
      required this.backgroundColor,
      required this.text,
      required this.textColor,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(0)),
      // ignore: prefer_const_constructors
      child: Center(
          // ignore: prefer_const_constructors
          child: Text(
        text,
        // ignore: prefer_const_constructors
        style: TextStyle(
          color: textColor,
          fontSize: 20,
        ),
      )),
    );
  }
}
