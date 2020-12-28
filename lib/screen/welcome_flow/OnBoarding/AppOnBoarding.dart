import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:m_lenden/screen/app_flow/HomePage.dart';

class AppOnBoarding extends StatefulWidget {
  @override
  _AppOnBoardingState createState() => _AppOnBoardingState();
}

class _AppOnBoardingState extends State<AppOnBoarding> {

  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/$assetName.png', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }
  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 12.0, color: Color(0xff000000));
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          color: Color(0xff05A69B)),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Secure Transfer",
          body:
          "Send money  by M lenden from any operator  is very easy and secure. You will be able to send money to any MFS in Bangladesh. ",
          image: _buildImage('intro1'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Send Money to any MFS",
          body:
          "Send money by M lenden from any operator  is very easy. Within 5/10 minutes you will be able to send money to any MFS in Bangladesh.",
          image: _buildImage('intro2'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Earn point to Reveal Offers",
          body:
          "Earn point  by transferring money to any MFS and get discount at online shopping and restaurants. ",
          image: _buildImage('intro3'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFF03807C),
        activeColor: Color(0xFF03807C),
        activeSize: Size(32.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
