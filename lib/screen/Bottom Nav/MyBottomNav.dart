import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:m_lenden/pages.dart';
import 'package:m_lenden/screen/Bottom%20Nav/Transaction%20History.dart';
import 'package:m_lenden/screen/Bottom%20Nav/HomePage.dart';

class MyBottomNav extends StatefulWidget {
  MyBottomNav({Key key}) : super(key: key);

  @override
  _MyBottomNavState createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int _seletedItem = 0;
  var _pages = [HomePage(),TransactionHistory(), SecondPage(), ThirdPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_seletedItem],),
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
                selectedIndex: _seletedItem,
                onTabChange: (index) {
                  setState(() {
                    _seletedItem = index;
                  });
                }),
          ),
        ),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.photo), title: Text('Photos')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('Profile'))
        ],
        currentIndex: _seletedItem,
        onTap: (index){
          setState(() {
            _seletedItem = index;
          });
        },
      ),*/
    );
  }
}