import 'package:aqua/Widgets/BrandBox.dart';
import 'package:aqua/Widgets/ProductBox.dart';
import 'package:aqua/Widgets/button.dart';
import 'package:aqua/utilities/AppConstants.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 12.5,
        ),
        Row(
          children: [
            BrandBox(
              text: "Brand 1",
            ),
            BrandBox(
              text: "Brand 2",
            ),
            BrandBox(
              text: "Brand 3",
            ),
            BrandBox(
              text: "Brand 4",
            ),
            BrandBox(
              text: "Brand 5",
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Column(
              children: [
                Row(children: [ProductBox(), ProductBox(), ProductBox()]),
                Row(children: [ProductBox(), ProductBox(), ProductBox()]),
                Row(children: [ProductBox(), ProductBox(), ProductBox()]),
              ],
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonWidget(
                  height: MediaQuery.of(context).size.height / 16,
                  backgroundColor: AppConst.mainColor,
                  text: "Add to Basket",
                  textColor: AppConst.photoColor),
              ButtonWidget(
                  height: MediaQuery.of(context).size.height / 16,
                  backgroundColor: AppConst.mainColor,
                  text: "Cancel",
                  textColor: AppConst.photoColor),
            ],
          ),
        )
      ]),
    );
  }
}
