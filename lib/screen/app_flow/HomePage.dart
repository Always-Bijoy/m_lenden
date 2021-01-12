import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = List<String>.generate(10000, (i) => "Item $i");

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Likes',
      style: optionStyle,
    ),
    Text(
      'Index 2: Search',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
  ];

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
                        margin: EdgeInsets.only(top: 80),
                        child: Image.asset(
                          'assets/banner.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,top: 8),
                        child: Text("Transactions", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text('${items[index]}'),
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
                                  'assets/money.png',
                                  height: 20,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text("Send Money"),
                          ],
                        ),
                        Column(
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
                                  'assets/Send.png',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text("Flexiload"),
                          ],
                        ),
                        Column(
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
                              height: 18,
                            ),
                            Text("FaQ"),
                          ],
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
      bottomNavigationBar: Container(
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
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.assignment_rounded,
                    text: 'Likes',
                  ),
                  GButton(
                    icon: Icons.inbox,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.assignment_ind_rounded,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                }),
          ),
        ),
      ),
    );
  }
}
