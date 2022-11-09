import 'package:flutter/material.dart';

import '../utilities/AppConstants.dart';

class BrandBox extends StatelessWidget {
  final String text;
  BrandBox({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 1),
      child: Container(
        height: MediaQuery.of(context).size.height / 8,
        width: MediaQuery.of(context).size.width / 5.1,
        color: AppConst.textColor,
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: AppConst.photoColor),
        )),
      ),
    );
  }
}
