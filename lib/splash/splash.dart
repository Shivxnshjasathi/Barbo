import 'dart:async';
import 'package:barbo/screens/login/login_ui_user.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => login_ui_user()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff252524),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("Barbo/assets/logo.png"))),
        ),
      ),
    );
  }
}
