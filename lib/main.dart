import 'package:flutter/material.dart';
import 'package:m_lenden/DemoScreen.dart';
import 'package:m_lenden/screen/Bottom%20Nav/MyBottomNav.dart';
import 'package:m_lenden/screen/Bottom%20Nav/HomePage.dart';
import 'package:m_lenden/screen/welcome_flow/OTP/OtpVerification/OtpVerificationScreen.dart';
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
        '/otpPage': (context) => OtpVerificationScreen(),
        '/bottomeNav': (context) => MyBottomNav()
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal, fontFamily: 'Nunito'),
      home:
      // MyBottomNav()
      // DummyScreen()
      SplashScreen()
      // AppIntro(),
      // MyHomePage(title: 'Fancy OnBoarding HomePage'),
    );
  }
}
