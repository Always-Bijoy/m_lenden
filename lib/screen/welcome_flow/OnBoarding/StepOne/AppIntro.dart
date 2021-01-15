import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:m_lenden/utils/constructors.dart';

class AppIntro extends StatefulWidget {
  AppIntro({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AppIntroState createState() => new _AppIntroState();
}

class _AppIntroState extends State<AppIntro> {
  //Create a list of PageModel to be set on the onBoarding Screens.
  final pageList = [
    PageModel(
        color: const Color(0xFF65B0B4),
        heroImagePath: 'assets/intro1.png',
        title: Text('Secure Transfer', style: kPageModelTitle),
        body: Padding(
          padding: const EdgeInsets.only(left:38.0, right: 38.0),
          child: Text(
              'Send money  by M lenden from any operator  is very easy and secure. you will be able to send money to any MFS in Bangladesh. ',
              textAlign: TextAlign.left,
              style: kPageModelBody),
        ),
        icon: Icon(
          Icons.verified,
          color: const Color(0xFF9B90BC),
        ),),
    PageModel(
      color: const Color(0xFF9B90BC),
      heroImagePath: 'assets/intro2.png',
      title: Text('Send Money to any MFS',
          style: kPageModelTitle),
      body: Padding(
        padding: const EdgeInsets.only(left:38.0, right: 38.0),
        child: Text(
            'Send money  by M lenden from any operator is very easy. Within 5/10 minutes you will be able to send money to any MFS in Bangladesh.',
            textAlign: TextAlign.left,
            style: kPageModelBody),
      ),
      icon: Icon(
        Icons.send_to_mobile,
        color: const Color(0xFF9B90BC),
      ),
    ),
    PageModel(
      color: const Color(0xFF65B0B4),
      heroImagePath: 'assets/intro3.png',
      title: Text('Earn point to Reveal Offers',
          style: kPageModelTitle),
      body: Padding(
        padding: const EdgeInsets.only(left:38.0, right: 38.0),
        child: Text(
            'Earn point  by transferring money to any MFS and get discount at online shopping and restaurants.',
            textAlign: TextAlign.left,
            style: kPageModelBody),
      ),
      icon: Icon(
        Icons.local_offer,
        color: const Color(0xFF9B90BC),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Pass pageList and the mainPage route.
      body: FancyOnBoarding(
        doneButtonText: "Done",
        skipButtonText: "Skip",
        pageList: pageList,
        onDoneButtonPressed: () =>
            Navigator.of(context).pushReplacementNamed('/otpPage'),
        onSkipButtonPressed: () =>
            Navigator.of(context).pushReplacementNamed('/mainPage'),
      ),
    );
  }
}
