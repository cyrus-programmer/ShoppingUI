import 'package:aqua/Screens/ForgetPassword.dart';
import 'package:aqua/Screens/Home.dart';
import 'package:aqua/Screens/LoginPage.dart';
import 'package:aqua/Screens/SignUp.dart';
import 'package:aqua/utilities/AppConstants.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _NavigateToLogin();
  }

  _NavigateToLogin() async {
    await Future.delayed(Duration(microseconds: 4500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Image.asset(AppConst.logoPath)),
        color: AppConst.mainColor,
      ),
    );
  }
}
