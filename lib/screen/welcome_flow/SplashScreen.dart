import 'dart:async';

import 'package:flutter/material.dart';

import 'OnBoarding/StepOne/AppIntro.dart';
import 'OnBoarding/AppOnBoarding.dart';
import 'OnBoarding/onBoarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AppIntro(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset('assets/splash_logo.png'),
        ),
      ),
    );
  }
}
