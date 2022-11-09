import 'package:aqua/Widgets/textFieldWidget.dart';
import 'package:aqua/utilities/AppConstants.dart';
import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  ProductBox({Key? key}) : super(key: key);
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.5),
      child: Container(
        height: MediaQuery.of(context).size.height / 4.4,
        width: MediaQuery.of(context).size.width / 3.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                color: AppConst.textColor,
                width: MediaQuery.of(context).size.width / 3.3,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 35,
                    ),
                    Image.asset("assets/images/Product.png"),
                    Text("Product Name")
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Amount:"), Text("Quantity:")],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
