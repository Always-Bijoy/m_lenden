import 'package:flutter/material.dart';

import '../../Bottom Nav/HomePage.dart';

class SummeryResponse extends StatefulWidget {
  @override
  _SummeryResponseState createState() => _SummeryResponseState();
}

class _SummeryResponseState extends State<SummeryResponse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summery'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    width: 114,
                    height: 114,
                    decoration: BoxDecoration(
                      color: Color(0xFFC0E8E6),
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Image.asset('assets/opt_hand.png')),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: RichText(
                      softWrap: true,
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'You Successfully Send Money To ',
                        style: TextStyle(
                            color: Color(0xFF03807C),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Shadhon Sarkar',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              color: Color(0xFF232323),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      '5000 BDT',
                      style: TextStyle(
                          fontSize: 30,
                          color: Color(0xFF03807C),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: RichText(
                      softWrap: true,
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Transaction done on ',
                        style: TextStyle(
                            color: Color(0xFF03807C),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        children: <TextSpan>[
                          TextSpan(
                            text: '12 December 2021. ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xFF232323),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  RichText(
                    softWrap: true,
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Your reference number is ',
                      style: TextStyle(
                          color: Color(0xFF03807C),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(
                          text: '5869 ',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Color(0xFF232323),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 64,
              width: 64,
              margin: EdgeInsets.only(bottom: 26),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Color(0xFF05A69B), Color(0xFF03807C)]),
                shape: BoxShape.circle,
              ),
              child: FlatButton(
                child: Center(
                  child: Image.asset(
                    'assets/IconHome.png',
                    height: 25,
                    width: 25,
                    color: Colors.white,
                  ),
                ),
                onPressed: () => {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  })
                },
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
