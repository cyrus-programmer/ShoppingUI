import 'package:flutter/material.dart';

import '../Widgets/button.dart';
import '../Widgets/textFieldWidget.dart';
import '../utilities/AppConstants.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  TextEditingController user = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmPassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppConst.logoPath,
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 5,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Sign Up",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldWidget(
              controller: user,
              hinttext: "Enter your Email Address/Phone Number",
              borderRadius: 0,
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldWidget(
              controller: password,
              hinttext: "Enter your Password",
              borderRadius: 0,
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldWidget(
              controller: confirmPassword,
              hinttext: "Confirm your Password",
              borderRadius: 0,
            ),
            SizedBox(
              height: 20,
            ),
            ButtonWidget(
                height: MediaQuery.of(context).size.height / 14,
                backgroundColor: AppConst.mainColor,
                text: "Submit",
                textColor: Colors.white)
          ],
        ),
      ),
    );
  }
}
