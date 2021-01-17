import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:m_lenden/screen/Bottom%20Nav/Transaction%20History.dart';
import 'package:m_lenden/screen/app_flow/FaQ/FaQ.dart';
import 'package:m_lenden/screen/welcome_flow/OnBoarding/StepOne/AppIntro.dart';

import '../app_flow/SendMoney/SendMoney.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = List<String>.generate(10, (i) => "Item $i");

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Stack(
                      children: [
                        Container(
                          height: 240,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFF03807C),
                                const Color(0xFF05A69B),
                              ],
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: 16, top: 12, right: 16),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Welcome',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          ' just click! transfer your money.',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Image.asset(
                                          'assets/point.png',
                                          height: 22,
                                          width: 16,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          '150',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    ClipOval(
                                      child: Image.asset(
                                        "assets/pro1.png",
                                        height: 42,
                                        width: 42,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 45),
                        child: Image.asset(
                          'assets/banner.png',
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 16, top: 10, bottom: 8),
                        child: Text(
                          "Transactions",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      //ListView>>...............................
                      Expanded(
                        child: ListView.builder(
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 50,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Stack(children: [
                                              Image.asset(
                                                "assets/pro1.png",
                                                width: 50,
                                                height: 50,
                                              ),
                                              Positioned(
                                                right: 0,
                                                bottom: 0,
                                                child: Image.asset(
                                                  "assets/icTickSquare.png",
                                                  width: 15,
                                                  height: 15,
                                                ),
                                              ),
                                            ]),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "01723355522",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "sent",
                                                    style: TextStyle(
                                                        color: Colors.green),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "10,000 BDT",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Image.asset(
                                                      "assets/nogod.png",
                                                      width: 15,
                                                      height: 15,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Image.asset(
                                                      "assets/arrowRight.png",
                                                      width: 15,
                                                      height: 15,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Image.asset(
                                                      "assets/rocket.png",
                                                      width: 15,
                                                      height: 15,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: screenHeight * (1 / 9),
              left: 16,
              right: 16,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SendMoney(),
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromRGBO(4, 161, 151, 0.25),
                                ),
                                height: 75,
                                width: 75,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Image.asset(
                                    'assets/money.png',
                                    height: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Send Money"),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AppIntro(),
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromRGBO(4, 161, 151, 0.25),
                                ),
                                height: 75,
                                width: 75,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Image.asset(
                                    'assets/Send.png',
                                    height: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Flexi Load"),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FaQ(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromRGBO(4, 161, 151, 0.25),
                                ),
                                height: 75,
                                width: 75,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Image.asset(
                                    'assets/Info.png',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text("FaQ"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      /*bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
                curve: Curves.easeOutExpo,
                // tab animation curves
                duration: Duration(milliseconds: 900),
                // tab animation duration
                gap: 8,
                // the tab button gap between icon and text
                color: Colors.grey[800],
                // unselected icon color
                activeColor: Colors.purple,
                // selected icon and text color
                iconSize: 24,
                // tab button icon size
                tabBackgroundColor: Colors.blueGrey.withOpacity(0.1),
                // selected tab background color
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                tabs: [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: LineIcons.history,
                    text: 'History',
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TransactionHistory(),
                          ),
                        );
                      });
                    },
                  ),
                  GButton(
                    icon: Icons.message,
                    text: 'Inbox',
                  ),
                  GButton(
                    icon: Icons.account_circle,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  switch (index) {
                    case 0:
                      Navigator.pushNamed(context, "/mainPage");
                      break;
                    case 1:
                      Navigator.pushNamed(context, "/otpPage");
                      break;
                  }
                }),
          ),
        ),
      ),*/
    );
  }
}
