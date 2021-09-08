import 'dart:async';

import 'package:flutter/material.dart';
import 'package:paracare/screens/login_screen.dart';
import 'package:paracare/screens/phone_veri.dart';

import 'package:paracare/utils/colors.dart';
import 'package:paracare/utils/size_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void complete() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => PhoneVerification()));
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), complete);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffColor,
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 3),
          height: Media.height! * 45,
          width: Media.width! * 70,
          child: Image.asset(
            "assets/logo.png",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
