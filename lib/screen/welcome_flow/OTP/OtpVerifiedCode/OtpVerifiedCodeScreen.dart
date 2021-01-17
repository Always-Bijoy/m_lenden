import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:m_lenden/screen/Bottom%20Nav/HomePage.dart';
import 'package:m_lenden/screen/Bottom%20Nav/MyBottomNav.dart';

class OtpVerifiedCode extends StatefulWidget {
  @override
  _OtpVerifiedCodeState createState() => _OtpVerifiedCodeState();
}

class _OtpVerifiedCodeState extends State<OtpVerifiedCode> {
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
              builder: (context) => MyBottomNav(),
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
                      'Verification Code',
                      style: TextStyle(
                        color: Color(0xFF03807C),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Text(
                            'Please enter code sent to',
                            style: TextStyle(
                              color: Color(0xFF232323),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '01717 126 ***',
                            style: TextStyle(
                              color: Color(0xFF232323),
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF03807C),
                            ),
                            color: Color.fromRGBO(189, 255, 251, 0.5),
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFF03807C)),
                              color: Color.fromRGBO(189, 255, 251, 0.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFF03807C)),
                              color: Color.fromRGBO(189, 255, 251, 0.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFF03807C)),
                              color: Color.fromRGBO(189, 255, 251, 0.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text(
                      'Resend Code',
                      style: TextStyle(
                        color: Color(0xFF232323),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
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
