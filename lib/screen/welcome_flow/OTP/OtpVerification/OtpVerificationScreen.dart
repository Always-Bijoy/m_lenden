import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:m_lenden/screen/app_flow/HomePage.dart';
import 'package:m_lenden/screen/welcome_flow/OTP/OtpVerifiedCode/OtpVerifiedCodeScreen.dart';

class OtpVerificationScreen extends StatefulWidget {
  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton:  FloatingActionButton(
        elevation: 4,
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle, // circular shape
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xFF05A69B), Color(0xFF03807C)]),
          ),
          child: Icon(
            Icons.arrow_forward_rounded,
            color: Colors.white,
          ),
        ),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OtpVerifiedCode(),
            ),
          );
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0xFFC0E8E6),
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Image.asset('assets/opt_hand.png')),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'OTP Verification',
                      style: TextStyle(
                        color: Color(0xFF03807C),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'We will send you ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'One Time Password',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 22),
                          ),
                          TextSpan(
                            text: ' on This mobile number!',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Enter phone number',
                      style: TextStyle(
                        color: Color(0xFF232323),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30, top: 12),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(189, 255, 251, 0.5),
                        enabledBorder: const OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(189, 255, 251, 0.5),
                          ),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
