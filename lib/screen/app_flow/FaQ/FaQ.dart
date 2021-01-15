import 'package:flutter/material.dart';

class FaQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FaQ'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Terms and Conditions',
                style: TextStyle(
                    color: Color(0xFF03807C),
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Color(0xFFC0E8E6),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset('assets/faq.png'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Column(children: [
                RichText(
                  softWrap: true,
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: '1. ',
                    style: TextStyle(
                        color: Color(0xFF232323),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'The Intellectual Property disclosure will inform users that the contents, logo and other visual media you created is your property and is protected by copyright laws.',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF03807C),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                  softWrap: true,
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: '2. ',
                    style: TextStyle(
                        color: Color(0xFF232323),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            "A Termination clause will inform that users' accounts on your website and mobile app or users' access to your website and terminated in case of abuses or at your sole discretion.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF03807C),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                  softWrap: true,
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: '3. ',
                    style: TextStyle(
                        color: Color(0xFF232323),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                        "A Governing Law will inform users which laws govern the headquartered or the country from which you operate your website and mobile app.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF03807C),
                        ),
                      ),
                    ],
                  ),
                ),

              ]),
            ),
          ],
        ),
      ),
    );
  }
}
