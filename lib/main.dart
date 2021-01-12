import 'package:flutter/material.dart';
import 'package:m_lenden/screen/app_flow/HomePage.dart';
import 'package:m_lenden/screen/welcome_flow/OTP/OtpVerification/OtpVerificationScreen.dart';
import 'file:///G:/flutterProject/work/m_lenden/lib/screen/welcome_flow/AppIntro.dart';
import 'package:m_lenden/screen/welcome_flow/OnBoarding/AppOnBoarding.dart';
import 'package:m_lenden/screen/welcome_flow/OnBoarding/onBoarding.dart';
import 'file:///G:/flutterProject/work/m_lenden/lib/screen/welcome_flow/OnBoarding/onBoarding.dart';
import 'package:m_lenden/screen/welcome_flow/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/mainPage': (context) => HomePage(),
        '/otpPage': (context) => OtpVerificationScreen()
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal, fontFamily: 'Nunito'),
      home: HomePage()
      // AppIntro(),
      // MyHomePage(title: 'Fancy OnBoarding HomePage'),
    );
  }
}
